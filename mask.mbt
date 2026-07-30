///|
pub fn ThermalMask::new(
  width~ : Int,
  height~ : Int,
  cells~ : Array[Bool],
) -> ThermalMask raise ThermalError {
  if width <= 0 || height <= 0 || cells.length() != width * height {
    raise ThermalError::InvalidDimensions(
      width~,
      height~,
      values=cells.length(),
    )
  }
  { width, height, cells: cells.copy() }
}

///|
pub fn ThermalMatrix::threshold_mask(
  matrix : ThermalMatrix,
  min_temp~ : Double,
  max_temp? : Double,
) -> ThermalMask {
  let cells = matrix.values.map(fn(value) {
    if value < min_temp {
      false
    } else {
      match max_temp {
        Some(limit) => value <= limit
        None => true
      }
    }
  })
  { width: matrix.width, height: matrix.height, cells }
}

///|
pub fn ThermalMask::get(
  mask : ThermalMask,
  point : ThermalPoint,
) -> Bool raise ThermalError {
  if point.x < 0 ||
    point.x >= mask.width ||
    point.y < 0 ||
    point.y >= mask.height {
    raise ThermalError::OutOfBounds(
      x=point.x,
      y=point.y,
      width=mask.width,
      height=mask.height,
    )
  }
  mask.cells[point.y * mask.width + point.x]
}

///|
fn mask_unsafe_get(mask : ThermalMask, x~ : Int, y~ : Int) -> Bool {
  mask.cells[y * mask.width + x]
}

///|
fn any_neighbor(mask : ThermalMask, x~ : Int, y~ : Int, radius : Int) -> Bool {
  let x0 = Int::max(0, x - radius)
  let x1 = Int::min(mask.width - 1, x + radius)
  let y0 = Int::max(0, y - radius)
  let y1 = Int::min(mask.height - 1, y + radius)
  for yy in y0..<=y1 {
    for xx in x0..<=x1 {
      if mask_unsafe_get(mask, x=xx, y=yy) {
        return true
      }
    }
  }
  false
}

///|
fn all_neighbors(mask : ThermalMask, x~ : Int, y~ : Int, radius : Int) -> Bool {
  let x0 = Int::max(0, x - radius)
  let x1 = Int::min(mask.width - 1, x + radius)
  let y0 = Int::max(0, y - radius)
  let y1 = Int::min(mask.height - 1, y + radius)
  for yy in y0..<=y1 {
    for xx in x0..<=x1 {
      if !mask_unsafe_get(mask, x=xx, y=yy) {
        return false
      }
    }
  }
  true
}

///|
pub fn ThermalMask::dilate(
  mask : ThermalMask,
  radius? : Int = 1,
) -> ThermalMask {
  let r = Int::max(1, radius)
  let cells : Array[Bool] = []
  for y in 0..<mask.height {
    for x in 0..<mask.width {
      cells.push(any_neighbor(mask, x~, y~, r))
    }
  }
  { width: mask.width, height: mask.height, cells }
}

///|
pub fn ThermalMask::erode(mask : ThermalMask, radius? : Int = 1) -> ThermalMask {
  let r = Int::max(1, radius)
  let cells : Array[Bool] = []
  for y in 0..<mask.height {
    for x in 0..<mask.width {
      cells.push(all_neighbors(mask, x~, y~, r))
    }
  }
  { width: mask.width, height: mask.height, cells }
}

///|
pub fn ThermalMask::open(mask : ThermalMask, radius? : Int = 1) -> ThermalMask {
  mask.erode(radius~).dilate(radius~)
}

///|
pub fn ThermalMask::close(mask : ThermalMask, radius? : Int = 1) -> ThermalMask {
  mask.dilate(radius~).erode(radius~)
}

///|
pub fn ThermalMask::count(mask : ThermalMask) -> Int {
  mask.cells.count_if(fn(cell) { cell })
}

///|
pub fn ThermalMask::to_ascii(
  mask : ThermalMask,
  hot? : String = "#",
  cold? : String = ".",
) -> String {
  let lines : Array[String] = []
  for y in 0..<mask.height {
    let row = StringBuilder::new()
    for x in 0..<mask.width {
      if mask_unsafe_get(mask, x~, y~) {
        row.write_string(hot)
      } else {
        row.write_string(cold)
      }
    }
    lines.push(row.to_string())
  }
  lines.join("\n")
}
