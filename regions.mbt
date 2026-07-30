///|
fn is_hot_enough(value : Double, min_temp : Double, max_temp : Double?) -> Bool {
  if value < min_temp {
    false
  } else {
    match max_temp {
      Some(limit) => value <= limit
      None => true
    }
  }
}

///|
fn push_neighbor(
  stack : Array[ThermalPoint],
  x~ : Int,
  y~ : Int,
  width~ : Int,
  height~ : Int
) -> Unit {
  if x >= 0 && y >= 0 && x < width && y < height {
    stack.push(ThermalPoint::new(x~, y~))
  }
}

///|
fn build_region(
  matrix : ThermalMatrix,
  start : ThermalPoint,
  visited : Array[Bool],
  id~ : Int,
  min_temp~ : Double,
  max_temp? : Double
) -> ThermalRegion {
  let stack : Array[ThermalPoint] = [start]
  let pixels : Array[ThermalPoint] = []
  let mut min_x = start.x
  let mut min_y = start.y
  let mut max_x = start.x
  let mut max_y = start.y
  let mut peak = start
  let mut sum = 0.0
  let mut min_seen = matrix.unsafe_get(x=start.x, y=start.y)
  let mut max_seen = min_seen
  for ;; {
    match stack.pop() {
      None => break
      Some(point) => {
        let idx = point.y * matrix.width + point.x
        if !visited[idx] {
          visited[idx] = true
          let value = matrix.unsafe_get(x=point.x, y=point.y)
          if is_hot_enough(value, min_temp, max_temp) {
            pixels.push(point)
            sum = sum + value
            min_x = Int::min(min_x, point.x)
            min_y = Int::min(min_y, point.y)
            max_x = Int::max(max_x, point.x)
            max_y = Int::max(max_y, point.y)
            min_seen = Double::min(min_seen, value)
            if value > max_seen {
              max_seen = value
              peak = point
            }
            push_neighbor(stack, x=point.x - 1, y=point.y, width=matrix.width, height=matrix.height)
            push_neighbor(stack, x=point.x + 1, y=point.y, width=matrix.width, height=matrix.height)
            push_neighbor(stack, x=point.x, y=point.y - 1, width=matrix.width, height=matrix.height)
            push_neighbor(stack, x=point.x, y=point.y + 1, width=matrix.width, height=matrix.height)
          }
        }
      }
    }
  }
  {
    id,
    pixels,
    min_x,
    min_y,
    max_x,
    max_y,
    min_temp: min_seen,
    max_temp: max_seen,
    average_temp: sum / pixels.length().to_double(),
    peak,
  }
}

///|
pub fn ThermalMatrix::threshold_regions(
  matrix : ThermalMatrix,
  min_temp~ : Double,
  max_temp? : Double
) -> Array[ThermalRegion] {
  let visited = Array::make(matrix.values.length(), false)
  let regions : Array[ThermalRegion] = []
  for y in 0..<matrix.height {
    for x in 0..<matrix.width {
      let idx = y * matrix.width + x
      let value = matrix.unsafe_get(x~, y~)
      if !visited[idx] && is_hot_enough(value, min_temp, max_temp) {
        let region = build_region(
          matrix,
          ThermalPoint::new(x~, y~),
          visited,
          id=regions.length() + 1,
          min_temp~,
          max_temp?,
        )
        regions.push(region)
      } else {
        visited[idx] = true
      }
    }
  }
  regions
}

///|
pub fn ThermalRegion::area(region : ThermalRegion) -> Int {
  region.pixels.length()
}
