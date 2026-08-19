///|
pub(all) struct Kernel {
  width : Int
  height : Int
  values : Array[Double]
} derive(Debug, Eq, ToJson)

///|
pub fn Kernel::new(
  width~ : Int,
  height~ : Int,
  values~ : Array[Double],
) -> Kernel raise ThermalError {
  if width <= 0 || height <= 0 || values.length() != width * height {
    raise InvalidDimensions(width~, height~, values=values.length())
  }
  { width, height, values: values.copy() }
}

///|
pub fn Kernel::box(size~ : Int) -> Kernel raise ThermalError {
  let side = Int::max(1, size)
  Kernel::new(
    width=side,
    height=side,
    values=Array::make(side * side, 1.0 / (side * side).to_double()),
  )
}

///|
pub fn ThermalMatrix::convolve(
  matrix : ThermalMatrix,
  kernel : Kernel,
) -> ThermalMatrix {
  let values : Array[Double] = []
  let cx = kernel.width / 2
  let cy = kernel.height / 2
  for y in 0..<matrix.height {
    for x in 0..<matrix.width {
      let mut total = 0.0
      for ky in 0..<kernel.height {
        for kx in 0..<kernel.width {
          let sx = (x + kx - cx).clamp(min=0, max=matrix.width - 1)
          let sy = (y + ky - cy).clamp(min=0, max=matrix.height - 1)
          total = total +
            matrix.unsafe_get(x=sx, y=sy) *
            kernel.values[ky * kernel.width + kx]
        }
      }
      values.push(total)
    }
  }
  { width: matrix.width, height: matrix.height, values }
}

///|
pub fn ThermalMatrix::laplacian(
  matrix : ThermalMatrix,
) -> ThermalMatrix raise ThermalError {
  let kernel = Kernel::new(width=3, height=3, values=[
    0.0, 1.0, 0.0, 1.0, -4.0, 1.0, 0.0, 1.0, 0.0,
  ])
  matrix.convolve(kernel)
}

///|
pub fn ThermalMatrix::sharpen(
  matrix : ThermalMatrix,
  amount? : Double = 1.0,
) -> ThermalMatrix raise ThermalError {
  let edges = matrix.laplacian()
  let values : Array[Double] = []
  for i, value in matrix.values {
    values.push(value - edges.values[i] * amount)
  }
  { width: matrix.width, height: matrix.height, values }
}

///|
pub fn ThermalMatrix::rescale(
  matrix : ThermalMatrix,
  width~ : Int,
  height~ : Int,
) -> ThermalMatrix raise ThermalError {
  if width <= 0 || height <= 0 {
    raise InvalidDimensions(width~, height~, values=0)
  }
  let values : Array[Double] = []
  for y in 0..<height {
    let source_y = (y * matrix.height / height).clamp(
      min=0,
      max=matrix.height - 1,
    )
    for x in 0..<width {
      let source_x = (x * matrix.width / width).clamp(
        min=0,
        max=matrix.width - 1,
      )
      values.push(matrix.unsafe_get(x=source_x, y=source_y))
    }
  }
  ThermalMatrix::new(width~, height~, values~)
}
