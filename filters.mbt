///|
pub(all) enum FilterKind {
  Mean
  Median
  Minimum
  Maximum
} derive(Debug, Eq, ToJson)

///|
fn window_values(
  matrix : ThermalMatrix,
  x : Int,
  y : Int,
  radius : Int,
) -> Array[Double] {
  let values : Array[Double] = []
  let x0 = Int::max(0, x - radius)
  let x1 = Int::min(matrix.width - 1, x + radius)
  let y0 = Int::max(0, y - radius)
  let y1 = Int::min(matrix.height - 1, y + radius)
  for yy in y0..<=y1 {
    for xx in x0..<=x1 {
      values.push(matrix.unsafe_get(x=xx, y=yy))
    }
  }
  values
}

///|
fn filtered_value(values : Array[Double], kind : FilterKind) -> Double {
  match kind {
    Mean =>
      values.fold(init=0.0, fn(a, b) { a + b }) / values.length().to_double()
    Median => {
      values.sort()
      values[(values.length() - 1) / 2]
    }
    Minimum => values.fold(init=values[0], fn(a, b) { Double::min(a, b) })
    Maximum => values.fold(init=values[0], fn(a, b) { Double::max(a, b) })
  }
}

///|
pub fn ThermalMatrix::filter(
  matrix : ThermalMatrix,
  radius? : Int = 1,
  kind? : FilterKind = Mean,
) -> ThermalMatrix {
  let r = Int::max(0, radius)
  let values : Array[Double] = []
  for y in 0..<matrix.height {
    for x in 0..<matrix.width {
      values.push(filtered_value(window_values(matrix, x, y, r), kind))
    }
  }
  { width: matrix.width, height: matrix.height, values }
}

///|
pub fn ThermalMatrix::median_filter(
  matrix : ThermalMatrix,
  radius? : Int = 1,
) -> ThermalMatrix {
  matrix.filter(radius~, kind=Median)
}

///|
pub fn ThermalMatrix::mean_filter(
  matrix : ThermalMatrix,
  radius? : Int = 1,
) -> ThermalMatrix {
  matrix.filter(radius~, kind=Mean)
}

///|
pub fn ThermalMatrix::gradient(matrix : ThermalMatrix) -> ThermalMatrix {
  let values : Array[Double] = []
  for y in 0..<matrix.height {
    for x in 0..<matrix.width {
      let left = matrix.unsafe_get(x=Int::max(0, x - 1), y~)
      let right = matrix.unsafe_get(x=Int::min(matrix.width - 1, x + 1), y~)
      let up = matrix.unsafe_get(x~, y=Int::max(0, y - 1))
      let down = matrix.unsafe_get(x~, y=Int::min(matrix.height - 1, y + 1))
      values.push(
        ((right - left) * (right - left) + (down - up) * (down - up)).sqrt(),
      )
    }
  }
  { width: matrix.width, height: matrix.height, values }
}
