///|
pub(all) enum ThresholdMode {
  Absolute(Double)
  MeanOffset(Double)
  MedianOffset(Double)
  Percentile(Double)
} derive(Debug, Eq, ToJson)

///|
pub fn ThermalMatrix::threshold_value(
  matrix : ThermalMatrix,
  mode : ThresholdMode,
) -> Double raise ThermalError {
  match mode {
    Absolute(value) => value
    MeanOffset(offset) => matrix.stats().mean + offset
    MedianOffset(offset) => matrix.stats().p50 + offset
    Percentile(p) => {
      let stats = matrix.stats()
      if p <= 0.5 {
        stats.p50
      } else if p <= 0.9 {
        stats.p90
      } else {
        stats.p95
      }
    }
  }
}

///|
pub fn ThermalMatrix::adaptive_mask(
  matrix : ThermalMatrix,
  mode : ThresholdMode,
) -> ThermalMask raise ThermalError {
  matrix.threshold_mask(min_temp=matrix.threshold_value(mode))
}

///|
pub(all) struct BoundaryPixel {
  point : ThermalPoint
  value : Double
  normal_x : Int
  normal_y : Int
} derive(Debug, Eq, ToJson)

///|
pub fn ThermalMatrix::boundary(
  matrix : ThermalMatrix,
  mask : ThermalMask,
) -> Array[BoundaryPixel] raise ThermalError {
  if matrix.width != mask.width || matrix.height != mask.height {
    raise InvalidDimensions(
      width=matrix.width,
      height=matrix.height,
      values=mask.cells.length(),
    )
  }
  let result : Array[BoundaryPixel] = []
  for y in 0..<matrix.height {
    for x in 0..<matrix.width {
      if mask.cells[y * matrix.width + x] {
        let mut nx = 0
        let mut ny = 0
        if x == 0 || !mask.cells[y * matrix.width + x - 1] {
          nx -= 1
        }
        if x == matrix.width - 1 || !mask.cells[y * matrix.width + x + 1] {
          nx += 1
        }
        if y == 0 || !mask.cells[(y - 1) * matrix.width + x] == false {
          ny -= 1
        }
        if y == matrix.height - 1 || !mask.cells[(y + 1) * matrix.width + x] {
          ny += 1
        }
        if nx != 0 || ny != 0 {
          result.push({
            point: ThermalPoint::new(x~, y~),
            value: matrix.unsafe_get(x~, y~),
            normal_x: nx,
            normal_y: ny,
          })
        }
      }
    }
  }
  result
}

///|
pub fn ThermalMask::fill_holes(mask : ThermalMask) -> ThermalMask {
  let outside = Array::make(mask.cells.length(), false)
  let stack : Array[ThermalPoint] = []
  for x in 0..<mask.width {
    stack.push(ThermalPoint::new(x~, y=0))
    stack.push(ThermalPoint::new(x~, y=mask.height - 1))
  }
  for y in 0..<mask.height {
    stack.push(ThermalPoint::new(x=0, y~))
    stack.push(ThermalPoint::new(x=mask.width - 1, y~))
  }
  for ;; {
    match stack.pop() {
      None => break
      Some(point) =>
        if point.x >= 0 &&
          point.y >= 0 &&
          point.x < mask.width &&
          point.y < mask.height {
          let index = point.y * mask.width + point.x
          if !outside[index] && !mask.cells[index] {
            outside[index] = true
            stack.append(point.neighbors(connectivity=4))
          }
        }
    }
  }
  let cells : Array[Bool] = []
  for index, value in mask.cells {
    cells.push(value || !outside[index])
  }
  { width: mask.width, height: mask.height, cells }
}

///|
pub fn ThermalMask::remove_small_components(
  mask : ThermalMask,
  minimum_area~ : Int,
) -> ThermalMask {
  let cells = mask.cells.copy()
  let visited = Array::make(cells.length(), false)
  for y in 0..<mask.height {
    for x in 0..<mask.width {
      let start_index = y * mask.width + x
      if cells[start_index] && !visited[start_index] {
        let component : Array[Int] = []
        let stack : Array[ThermalPoint] = [ThermalPoint::new(x~, y~)]
        for ;; {
          match stack.pop() {
            None => break
            Some(point) => {
              let index = point.y * mask.width + point.x
              if !visited[index] && cells[index] {
                visited[index] = true
                component.push(index)
                stack.append(point.neighbors(connectivity=4))
              }
            }
          }
        }
        if component.length() < minimum_area {
          for index in component {
            cells[index] = false
          }
        }
      }
    }
  }
  { width: mask.width, height: mask.height, cells }
}

///|
pub fn ThermalMatrix::region_adjacency(
  matrix : ThermalMatrix,
  regions : Array[ThermalRegion],
) -> Array[Array[Int]] {
  ignore(matrix)
  let result : Array[Array[Int]] = []
  for region in regions {
    let neighbors : Array[Int] = []
    for other in regions {
      if region.id != other.id &&
        (region.max_x + 1 >= other.min_x && other.max_x + 1 >= region.min_x) &&
        region.max_y + 1 >= other.min_y &&
        other.max_y + 1 >= region.min_y {
        neighbors.push(other.id)
      }
    }
    result.push(neighbors)
  }
  result
}

///|
pub fn ThermalRegion::compactness(region : ThermalRegion) -> Double {
  let perimeter = region.perimeter().to_double()
  if perimeter == 0.0 {
    0.0
  } else {
    4.0 *
    3.141592653589793 *
    region.area().to_double() /
    (perimeter * perimeter)
  }
}

///|
pub fn ThermalRegion::centroid(region : ThermalRegion) -> ThermalPoint {
  let mut x = 0
  let mut y = 0
  for point in region.pixels {
    x += point.x
    y += point.y
  }
  let area = Int::max(1, region.area())
  ThermalPoint::new(x=x / area, y=y / area)
}
