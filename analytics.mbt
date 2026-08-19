///|
pub(all) struct HistogramBin {
  lower : Double
  upper : Double
  count : Int
} derive(Debug, Eq, ToJson)

///|
pub fn ThermalMatrix::histogram(
  matrix : ThermalMatrix,
  bins~ : Int,
) -> Array[HistogramBin] raise ThermalError {
  let count = Int::max(1, bins)
  let range = matrix.range()
  let span = range.span()
  let step = if span == 0.0 { 1.0 } else { span / count.to_double() }
  let counts = Array::make(count, 0)
  for value in matrix.values {
    let index = if span == 0.0 {
      0
    } else {
      ((value - range.min) / step).floor().to_int().clamp(min=0, max=count - 1)
    }
    counts[index] += 1
  }
  let result : Array[HistogramBin] = []
  for i in 0..<count {
    result.push({
      lower: range.min + i.to_double() * step,
      upper: range.min + (i + 1).to_double() * step,
      count: counts[i],
    })
  }
  result
}

///|
pub(all) struct Anomaly {
  point : ThermalPoint
  value : Double
  z_score : Double
} derive(Debug, Eq, ToJson)

///|
pub fn ThermalMatrix::anomalies(
  matrix : ThermalMatrix,
  z_limit? : Double = 3.0,
) -> Array[Anomaly] raise ThermalError {
  let stats = matrix.stats()
  let limit = Double::max(0.0, z_limit)
  let result : Array[Anomaly] = []
  for y in 0..<matrix.height {
    for x in 0..<matrix.width {
      let value = matrix.unsafe_get(x~, y~)
      let score = if stats.stddev == 0.0 {
        0.0
      } else {
        (value - stats.mean) / stats.stddev
      }
      if score.abs() >= limit {
        result.push({ point: ThermalPoint::new(x~, y~), value, z_score: score })
      }
    }
  }
  result.sort_by(fn(a, b) { b.z_score.abs().compare(a.z_score.abs()) })
  result
}

///|
pub fn ThermalMatrix::hot_fraction(
  matrix : ThermalMatrix,
  threshold~ : Double,
) -> Double {
  let count = matrix.values.count_if(fn(value) { value >= threshold })
  count.to_double() / matrix.values.length().to_double()
}

///|
pub fn ThermalRegion::perimeter(region : ThermalRegion) -> Int {
  let pixels = region.pixels
  let mut perimeter = 0
  for point in pixels {
    let mut neighbors = 0
    for other in pixels {
      if (other.x - point.x).abs() + (other.y - point.y).abs() == 1 {
        neighbors += 1
      }
    }
    perimeter += 4 - neighbors
  }
  perimeter
}
