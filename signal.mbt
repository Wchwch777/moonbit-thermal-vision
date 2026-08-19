///|
pub(all) struct SignalPeak {
  index : Int
  value : Double
  prominence : Double
  width : Int
} derive(Debug, Eq, ToJson)

///|
pub fn smooth_signal(
  values : Array[Double],
  radius? : Int = 1,
) -> Array[Double] {
  let result : Array[Double] = []
  let r = Int::max(0, radius)
  for i in 0..<values.length() {
    let start = Int::max(0, i - r)
    let finish = Int::min(values.length() - 1, i + r)
    let mut sum = 0.0
    for j in start..<=finish {
      sum += values[j]
    }
    result.push(sum / (finish - start + 1).to_double())
  }
  result
}

///|
pub fn derivative(values : Array[Double]) -> Array[Double] {
  let result : Array[Double] = []
  if values.is_empty() {
    return result
  }
  if values.length() == 1 {
    result.push(0.0)
    return result
  }
  result.push(values[1] - values[0])
  for i in 1..<(values.length() - 1) {
    result.push((values[i + 1] - values[i - 1]) / 2.0)
  }
  result.push(values[values.length() - 1] - values[values.length() - 2])
  result
}

///|
pub fn second_derivative(values : Array[Double]) -> Array[Double] {
  let result : Array[Double] = Array::make(values.length(), 0.0)
  if values.length() >= 3 {
    for i in 1..<(values.length() - 1) {
      result[i] = values[i + 1] - 2.0 * values[i] + values[i - 1]
    }
  }
  result
}

///|
pub fn find_peaks(
  values : Array[Double],
  minimum_prominence? : Double = 0.0,
  minimum_distance? : Int = 1,
) -> Array[SignalPeak] {
  let candidates : Array[SignalPeak] = []
  for i in 0..<values.length() {
    let left = if i == 0 { values[i] } else { values[i - 1] }
    let right = if i == values.length() - 1 { values[i] } else { values[i + 1] }
    if values[i] >= left &&
      values[i] >= right &&
      (values[i] > left || values[i] > right) {
      let base = Double::max(left, right)
      candidates.push({
        index: i,
        value: values[i],
        prominence: values[i] - base,
        width: 1,
      })
    }
  }
  let result : Array[SignalPeak] = []
  for peak in candidates {
    if peak.prominence >= minimum_prominence {
      if result.is_empty() {
        result.push(peak)
      } else {
        let previous = result[result.length() - 1]
        if peak.index - previous.index < minimum_distance {
          if peak.value > previous.value {
            result[result.length() - 1] = peak
          }
        } else {
          result.push(peak)
        }
      }
    }
  }
  result
}

///|
pub fn integrate(values : Array[Double], step? : Double = 1.0) -> Double {
  if values.length() < 2 {
    0.0
  } else {
    let mut total = 0.0
    for i in 0..<(values.length() - 1) {
      total += (values[i] + values[i + 1]) * step / 2.0
    }
    total
  }
}

///|
pub fn autocorrelation(values : Array[Double], lag~ : Int) -> Double {
  if lag < 0 || lag >= values.length() {
    0.0
  } else {
    let mean = values.fold(init=0.0, fn(a, b) { a + b }) /
      values.length().to_double()
    let mut numerator = 0.0
    let mut denominator = 0.0
    for i in 0..<values.length() {
      let centered = values[i] - mean
      denominator += centered * centered
      if i + lag < values.length() {
        numerator += centered * (values[i + lag] - mean)
      }
    }
    if denominator == 0.0 {
      0.0
    } else {
      numerator / denominator
    }
  }
}

///|
pub fn ThermalMatrix::row_signal(
  matrix : ThermalMatrix,
  y : Int,
) -> Array[Double] raise ThermalError {
  matrix.row(y)
}

///|
pub fn ThermalMatrix::column_signal(
  matrix : ThermalMatrix,
  x : Int,
) -> Array[Double] raise ThermalError {
  if x < 0 || x >= matrix.width {
    raise OutOfBounds(x~, y=0, width=matrix.width, height=matrix.height)
  }
  let result : Array[Double] = []
  for y in 0..<matrix.height {
    result.push(matrix.unsafe_get(x~, y~))
  }
  result
}

///|
pub fn ThermalMatrix::peak_map(
  matrix : ThermalMatrix,
  radius? : Int = 1,
) -> ThermalMask {
  let r = Int::max(1, radius)
  let cells : Array[Bool] = []
  for i, _ in matrix.values {
    let point = ThermalPoint::new(x=i % matrix.width, y=i / matrix.width)
    let value = matrix.unsafe_get(x=point.x, y=point.y)
    let mut peak = true
    for neighbor in point.neighbors(connectivity=8) {
      if neighbor.x >= 0 &&
        neighbor.y >= 0 &&
        neighbor.x < matrix.width &&
        neighbor.y < matrix.height &&
        ThermalPoint::chebyshev(point, neighbor) <= r &&
        matrix.unsafe_get(x=neighbor.x, y=neighbor.y) > value {
        peak = false
      }
    }
    cells.push(peak)
  }
  { width: matrix.width, height: matrix.height, cells }
}
