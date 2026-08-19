///|
pub(all) struct FrameDelta {
  changed : Int
  mean_absolute : Double
  maximum_absolute : Double
  normalized : Double
} derive(Debug, Eq, ToJson)

///|
pub fn ThermalMatrix::delta(
  a : ThermalMatrix,
  b : ThermalMatrix,
) -> FrameDelta raise ThermalError {
  if a.width != b.width || a.height != b.height {
    raise InvalidDimensions(
      width=a.width,
      height=a.height,
      values=b.values.length(),
    )
  }
  let mut changed = 0
  let mut sum = 0.0
  let mut maximum = 0.0
  for i in 0..<a.values.length() {
    let difference = (a.values[i] - b.values[i]).abs()
    if difference > 0.0 {
      changed += 1
    }
    sum = sum + difference
    maximum = Double::max(maximum, difference)
  }
  let total = a.values.length().to_double()
  {
    changed,
    mean_absolute: sum / total,
    maximum_absolute: maximum,
    normalized: changed.to_double() / total,
  }
}

///|
pub(all) struct Trend {
  slope : Double
  intercept : Double
  first : Double
  last : Double
  direction : Int
} derive(Debug, Eq, ToJson)

///|
pub fn trend(values : Array[Double]) -> Trend {
  if values.is_empty() {
    return { slope: 0.0, intercept: 0.0, first: 0.0, last: 0.0, direction: 0 }
  }
  let n = values.length().to_double()
  let sx = (n - 1.0) * n / 2.0
  let sxx = (n - 1.0) * n * (2.0 * n - 1.0) / 6.0
  let sy = values.fold(init=0.0, fn(a, b) { a + b })
  let mut sxy = 0.0
  for i, value in values {
    sxy = sxy + i.to_double() * value
  }
  let denominator = n * sxx - sx * sx
  let slope = if denominator == 0.0 {
    0.0
  } else {
    (n * sxy - sx * sy) / denominator
  }
  let intercept = (sy - slope * sx) / n
  {
    slope,
    intercept,
    first: values[0],
    last: values[values.length() - 1],
    direction: if slope > 0.0 {
      1
    } else if slope < 0.0 {
      -1
    } else {
      0
    },
  }
}

///|
pub fn ThermalMatrix::row_trends(
  matrix : ThermalMatrix,
) -> Array[Trend] raise ThermalError {
  let result : Array[Trend] = []
  for y in 0..<matrix.height {
    result.push(trend(matrix.row(y)))
  }
  result
}

///|
pub fn ThermalMatrix::column_trends(matrix : ThermalMatrix) -> Array[Trend] {
  let result : Array[Trend] = []
  for x in 0..<matrix.width {
    let values : Array[Double] = []
    for y in 0..<matrix.height {
      values.push(matrix.unsafe_get(x~, y~))
    }
    result.push(trend(values))
  }
  result
}
