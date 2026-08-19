///|
pub(all) struct ThermalRoi {
  origin : ThermalPoint
  width : Int
  height : Int
} derive(Debug, Eq, ToJson)

///|
pub fn ThermalRoi::new(
  origin~ : ThermalPoint,
  width~ : Int,
  height~ : Int,
) -> ThermalRoi raise ThermalError {
  if width <= 0 || height <= 0 {
    raise InvalidDimensions(width~, height~, values=width * height)
  }
  { origin, width, height }
}

///|
pub fn ThermalRoi::contains(roi : ThermalRoi, point : ThermalPoint) -> Bool {
  point.x >= roi.origin.x &&
  point.y >= roi.origin.y &&
  point.x < roi.origin.x + roi.width &&
  point.y < roi.origin.y + roi.height
}

///|
pub fn ThermalRoi::area(roi : ThermalRoi) -> Int {
  roi.width * roi.height
}

///|
pub fn ThermalRoi::end(roi : ThermalRoi) -> ThermalPoint {
  ThermalPoint::new(
    x=roi.origin.x + roi.width - 1,
    y=roi.origin.y + roi.height - 1,
  )
}

///|
pub fn ThermalRoi::intersection(a : ThermalRoi, b : ThermalRoi) -> ThermalRoi? {
  let x0 = Int::max(a.origin.x, b.origin.x)
  let y0 = Int::max(a.origin.y, b.origin.y)
  let x1 = Int::min(a.end().x, b.end().x)
  let y1 = Int::min(a.end().y, b.end().y)
  if x0 > x1 || y0 > y1 {
    None
  } else {
    Some({
      origin: ThermalPoint::new(x=x0, y=y0),
      width: x1 - x0 + 1,
      height: y1 - y0 + 1,
    })
  }
}

///|
pub fn ThermalRoi::union(a : ThermalRoi, b : ThermalRoi) -> ThermalRoi {
  let x0 = Int::min(a.origin.x, b.origin.x)
  let y0 = Int::min(a.origin.y, b.origin.y)
  let x1 = Int::max(a.end().x, b.end().x)
  let y1 = Int::max(a.end().y, b.end().y)
  {
    origin: ThermalPoint::new(x=x0, y=y0),
    width: x1 - x0 + 1,
    height: y1 - y0 + 1,
  }
}

///|
pub fn ThermalMatrix::roi(
  matrix : ThermalMatrix,
  roi : ThermalRoi,
) -> ThermalMatrix raise ThermalError {
  matrix.crop(origin=roi.origin, width=roi.width, height=roi.height)
}

///|
pub fn ThermalMatrix::roi_stats(
  matrix : ThermalMatrix,
  roi : ThermalRoi,
) -> ThermalStats raise ThermalError {
  matrix.roi(roi).stats()
}

///|
pub(all) struct ProfileSample {
  distance : Int
  temperature : Double
} derive(Debug, Eq, ToJson)

///|
pub fn ThermalMatrix::line_profile(
  matrix : ThermalMatrix,
  start~ : ThermalPoint,
  end~ : ThermalPoint,
) -> Array[ProfileSample] raise ThermalError {
  ignore(matrix.index(start))
  ignore(matrix.index(end))
  let dx = (end.x - start.x).abs()
  let dy = (end.y - start.y).abs()
  let steps = Int::max(dx, dy)
  let samples : Array[ProfileSample] = []
  if steps == 0 {
    samples.push({
      distance: 0,
      temperature: matrix.unsafe_get(x=start.x, y=start.y),
    })
  } else {
    for i in 0..<=steps {
      let x = start.x + (end.x - start.x) * i / steps
      let y = start.y + (end.y - start.y) * i / steps
      samples.push({ distance: i, temperature: matrix.unsafe_get(x~, y~) })
    }
  }
  samples
}

///|
pub fn ThermalMatrix::roi_mean_profile(
  matrix : ThermalMatrix,
  roi : ThermalRoi,
) -> Array[Double] raise ThermalError {
  let frame = matrix.roi(roi)
  let result : Array[Double] = []
  for y in 0..<frame.height {
    result.push(
      frame.row(y).fold(init=0.0, fn(a, b) { a + b }) / frame.width.to_double(),
    )
  }
  result
}

///|
pub fn ThermalMatrix::roi_column_profile(
  matrix : ThermalMatrix,
  roi : ThermalRoi,
) -> Array[Double] raise ThermalError {
  let frame = matrix.roi(roi)
  let result : Array[Double] = []
  for x in 0..<frame.width {
    let mut sum = 0.0
    for y in 0..<frame.height {
      sum += frame.unsafe_get(x~, y~)
    }
    result.push(sum / frame.height.to_double())
  }
  result
}

///|
pub fn ThermalPoint::translate(
  point : ThermalPoint,
  dx~ : Int,
  dy~ : Int,
) -> ThermalPoint {
  { x: point.x + dx, y: point.y + dy }
}

///|
pub fn ThermalPoint::manhattan(a : ThermalPoint, b : ThermalPoint) -> Int {
  (a.x - b.x).abs() + (a.y - b.y).abs()
}

///|
pub fn ThermalPoint::chebyshev(a : ThermalPoint, b : ThermalPoint) -> Int {
  Int::max((a.x - b.x).abs(), (a.y - b.y).abs())
}

///|
pub fn ThermalPoint::neighbors(
  point : ThermalPoint,
  connectivity? : Int = 4,
) -> Array[ThermalPoint] {
  let result : Array[ThermalPoint] = [
    point.translate(dx=-1, dy=0),
    point.translate(dx=1, dy=0),
    point.translate(dx=0, dy=-1),
    point.translate(dx=0, dy=1),
  ]
  if connectivity >= 8 {
    result.append([
      point.translate(dx=-1, dy=-1),
      point.translate(dx=1, dy=-1),
      point.translate(dx=-1, dy=1),
      point.translate(dx=1, dy=1),
    ])
  }
  result
}

///|
pub fn ThermalMatrix::weighted_mean(
  matrix : ThermalMatrix,
  weights : ThermalMatrix,
) -> Double raise ThermalError {
  if matrix.width != weights.width || matrix.height != weights.height {
    raise InvalidDimensions(
      width=matrix.width,
      height=matrix.height,
      values=weights.values.length(),
    )
  }
  let mut numerator = 0.0
  let mut denominator = 0.0
  for i, value in matrix.values {
    let weight = weights.values[i]
    numerator += value * weight
    denominator += weight
  }
  if denominator == 0.0 {
    0.0
  } else {
    numerator / denominator
  }
}

///|
pub fn ThermalMatrix::masked_values(
  matrix : ThermalMatrix,
  mask : ThermalMask,
) -> Array[Double] raise ThermalError {
  if matrix.width != mask.width || matrix.height != mask.height {
    raise InvalidDimensions(
      width=matrix.width,
      height=matrix.height,
      values=mask.cells.length(),
    )
  }
  let values : Array[Double] = []
  for i, value in matrix.values {
    if mask.cells[i] {
      values.push(value)
    }
  }
  values
}
