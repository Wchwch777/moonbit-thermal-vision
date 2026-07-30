///|
pub fn ThermalMatrix::new(
  width~ : Int,
  height~ : Int,
  values~ : Array[Double]
) -> ThermalMatrix raise ThermalError {
  if width <= 0 || height <= 0 {
    raise ThermalError::InvalidDimensions(width~, height~, values=values.length())
  }
  let expected = width * height
  if values.length() != expected {
    raise ThermalError::InvalidDimensions(width~, height~, values=values.length())
  }
  { width, height, values: values.copy() }
}

///|
pub fn ThermalMatrix::from_rows(
  rows : Array[Array[Double]]
) -> ThermalMatrix raise ThermalError {
  if rows.is_empty() {
    raise ThermalError::EmptyMatrix
  }
  let width = rows[0].length()
  if width == 0 {
    raise ThermalError::EmptyMatrix
  }
  let values : Array[Double] = []
  for row_index, row in rows {
    if row.length() != width {
      raise ThermalError::RaggedRows(
        expected=width,
        actual=row.length(),
        row=row_index,
      )
    }
    values.append(row)
  }
  ThermalMatrix::new(width~, height=rows.length(), values~)
}

///|
pub fn ThermalMatrix::index(matrix : ThermalMatrix, point : ThermalPoint) -> Int raise ThermalError {
  if point.x < 0 || point.x >= matrix.width || point.y < 0 || point.y >= matrix.height {
    raise ThermalError::OutOfBounds(
      x=point.x,
      y=point.y,
      width=matrix.width,
      height=matrix.height,
    )
  }
  point.y * matrix.width + point.x
}

///|
pub fn ThermalMatrix::get(matrix : ThermalMatrix, point : ThermalPoint) -> Double raise ThermalError {
  matrix.values[matrix.index(point)]
}

///|
pub fn ThermalMatrix::unsafe_get(matrix : ThermalMatrix, x~ : Int, y~ : Int) -> Double {
  matrix.values[y * matrix.width + x]
}

///|
pub fn ThermalMatrix::row(matrix : ThermalMatrix, y : Int) -> Array[Double] raise ThermalError {
  if y < 0 || y >= matrix.height {
    raise ThermalError::OutOfBounds(x=0, y~, width=matrix.width, height=matrix.height)
  }
  let out : Array[Double] = []
  for x in 0..<matrix.width {
    out.push(matrix.unsafe_get(x~, y~))
  }
  out
}

///|
pub fn ThermalMatrix::map(
  matrix : ThermalMatrix,
  f : (Double) -> Double
) -> ThermalMatrix {
  {
    width: matrix.width,
    height: matrix.height,
    values: matrix.values.map(f),
  }
}

///|
pub fn ThermalMatrix::crop(
  matrix : ThermalMatrix,
  origin~ : ThermalPoint,
  width~ : Int,
  height~ : Int
) -> ThermalMatrix raise ThermalError {
  if width <= 0 || height <= 0 {
    raise ThermalError::InvalidDimensions(width~, height~, values=width * height)
  }
  let last = ThermalPoint::new(x=origin.x + width - 1, y=origin.y + height - 1)
  ignore(matrix.index(origin))
  ignore(matrix.index(last))
  let values : Array[Double] = []
  for y in origin.y..<(origin.y + height) {
    for x in origin.x..<(origin.x + width) {
      values.push(matrix.unsafe_get(x~, y~))
    }
  }
  ThermalMatrix::new(width~, height~, values~)
}

///|
pub fn ThermalMatrix::range(matrix : ThermalMatrix) -> TemperatureRange raise ThermalError {
  if matrix.values.is_empty() {
    raise ThermalError::EmptyMatrix
  }
  let first = matrix.values[0]
  for min = first, max = first, i = 1; i < matrix.values.length(); {
    let value = matrix.values[i]
    continue Double::min(min, value), Double::max(max, value), i + 1
  } nobreak {
    { min, max }
  }
}
