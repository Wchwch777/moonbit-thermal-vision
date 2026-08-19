///|
pub(all) enum SampleQuality {
  Valid
  Missing
  NonFinite
  BelowPhysicalLimit
  AbovePhysicalLimit
} derive(Debug, Eq, ToJson)

///|
pub(all) struct QualitySummary {
  total : Int
  valid : Int
  missing : Int
  non_finite : Int
  below_limit : Int
  above_limit : Int
  min_valid : Double
  max_valid : Double
} derive(Debug, Eq, ToJson)

///|
pub(all) struct TemperatureLimits {
  minimum : Double
  maximum : Double
} derive(Debug, Eq, ToJson)

///|
pub fn TemperatureLimits::new(
  minimum~ : Double,
  maximum~ : Double,
) -> TemperatureLimits {
  { minimum, maximum }
}

///|
pub fn TemperatureLimits::contains(
  limits : TemperatureLimits,
  value : Double,
) -> Bool {
  value >= limits.minimum && value <= limits.maximum
}

///|
pub fn classify_temperature(
  value : Double,
  limits : TemperatureLimits,
) -> SampleQuality {
  if value != value {
    NonFinite
  } else if value < limits.minimum {
    BelowPhysicalLimit
  } else if value > limits.maximum {
    AbovePhysicalLimit
  } else {
    Valid
  }
}

///|
pub fn ThermalMatrix::quality(
  matrix : ThermalMatrix,
  limits : TemperatureLimits,
) -> QualitySummary {
  let mut valid = 0
  let mut missing = 0
  let mut non_finite = 0
  let mut below_limit = 0
  let mut above_limit = 0
  let mut min_valid = 0.0
  let mut max_valid = 0.0
  for value in matrix.values {
    match classify_temperature(value, limits) {
      Valid => {
        if valid == 0 {
          min_valid = value
          max_valid = value
        } else {
          min_valid = Double::min(min_valid, value)
          max_valid = Double::max(max_valid, value)
        }
        valid += 1
      }
      Missing => missing += 1
      NonFinite => non_finite += 1
      BelowPhysicalLimit => below_limit += 1
      AbovePhysicalLimit => above_limit += 1
    }
  }
  {
    total: matrix.values.length(),
    valid,
    missing,
    non_finite,
    below_limit,
    above_limit,
    min_valid,
    max_valid,
  }
}

///|
pub fn ThermalMatrix::valid_mask(
  matrix : ThermalMatrix,
  limits : TemperatureLimits,
) -> ThermalMask {
  let cells = matrix.values.map(fn(value) {
    classify_temperature(value, limits) is Valid
  })
  { width: matrix.width, height: matrix.height, cells }
}

///|
pub fn ThermalMask::bounding_box(mask : ThermalMask) -> ThermalRegion? {
  let mut min_x = mask.width
  let mut min_y = mask.height
  let mut max_x = -1
  let mut max_y = -1
  let pixels : Array[ThermalPoint] = []
  for y in 0..<mask.height {
    for x in 0..<mask.width {
      if mask.cells[y * mask.width + x] {
        pixels.push(ThermalPoint::new(x~, y~))
        min_x = Int::min(min_x, x)
        min_y = Int::min(min_y, y)
        max_x = Int::max(max_x, x)
        max_y = Int::max(max_y, y)
      }
    }
  }
  if pixels.is_empty() {
    None
  } else {
    Some({
      id: 0,
      pixels,
      min_x,
      min_y,
      max_x,
      max_y,
      min_temp: 0.0,
      max_temp: 0.0,
      average_temp: 0.0,
      peak: pixels[0],
    })
  }
}

///|
pub fn ThermalMask::invert(mask : ThermalMask) -> ThermalMask {
  {
    width: mask.width,
    height: mask.height,
    cells: mask.cells.map(fn(x) { !x }),
  }
}

///|
pub fn ThermalMask::intersection(
  a : ThermalMask,
  b : ThermalMask,
) -> ThermalMask raise ThermalError {
  if a.width != b.width || a.height != b.height {
    raise InvalidDimensions(
      width=a.width,
      height=a.height,
      values=b.cells.length(),
    )
  }
  let cells : Array[Bool] = []
  for i, value in a.cells {
    cells.push(value && b.cells[i])
  }
  { width: a.width, height: a.height, cells }
}

///|
pub fn ThermalMask::union(
  a : ThermalMask,
  b : ThermalMask,
) -> ThermalMask raise ThermalError {
  if a.width != b.width || a.height != b.height {
    raise InvalidDimensions(
      width=a.width,
      height=a.height,
      values=b.cells.length(),
    )
  }
  let cells : Array[Bool] = []
  for i, value in a.cells {
    cells.push(value || b.cells[i])
  }
  { width: a.width, height: a.height, cells }
}
