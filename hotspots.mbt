///|
fn neighborhood_average(
  matrix : ThermalMatrix,
  center : ThermalPoint,
  radius : Int
) -> Double {
  let mut sum = 0.0
  let mut count = 0
  let y0 = Int::max(0, center.y - radius)
  let y1 = Int::min(matrix.height - 1, center.y + radius)
  let x0 = Int::max(0, center.x - radius)
  let x1 = Int::min(matrix.width - 1, center.x + radius)
  for y in y0..=y1 {
    for x in x0..=x1 {
      if !(x == center.x && y == center.y) {
        sum = sum + matrix.unsafe_get(x~, y~)
        count = count + 1
      }
    }
  }
  if count == 0 {
    matrix.unsafe_get(x=center.x, y=center.y)
  } else {
    sum / count.to_double()
  }
}

///|
fn is_local_peak(matrix : ThermalMatrix, point : ThermalPoint, radius : Int) -> Bool {
  let center = matrix.unsafe_get(x=point.x, y=point.y)
  let y0 = Int::max(0, point.y - radius)
  let y1 = Int::min(matrix.height - 1, point.y + radius)
  let x0 = Int::max(0, point.x - radius)
  let x1 = Int::min(matrix.width - 1, point.x + radius)
  for y in y0..=y1 {
    for x in x0..=x1 {
      if !(x == point.x && y == point.y) && matrix.unsafe_get(x~, y~) > center {
        return false
      }
    }
  }
  true
}

///|
fn compare_hotspot_desc(a : Hotspot, b : Hotspot) -> Int {
  if a.temperature > b.temperature {
    -1
  } else if a.temperature < b.temperature {
    1
  } else {
    a.point.y.compare(b.point.y) |> fn(order) {
      if order != 0 {
        order
      } else {
        a.point.x.compare(b.point.x)
      }
    }
  }
}

///|
pub fn ThermalMatrix::detect_hotspots(
  matrix : ThermalMatrix,
  min_temp~ : Double,
  radius? : Int = 1,
  min_contrast? : Double = 0.0,
  limit? : Int = 16
) -> Array[Hotspot] {
  let search_radius = Int::max(1, radius)
  let hotspots : Array[Hotspot] = []
  for y in 0..<matrix.height {
    for x in 0..<matrix.width {
      let point = ThermalPoint::new(x~, y~)
      let temp = matrix.unsafe_get(x~, y~)
      if temp >= min_temp && is_local_peak(matrix, point, search_radius) {
        let ambient = neighborhood_average(matrix, point, search_radius)
        let contrast = temp - ambient
        if contrast >= min_contrast {
          hotspots.push({ point, temperature: temp, contrast })
        }
      }
    }
  }
  hotspots.sort_by(compare_hotspot_desc)
  if hotspots.length() > limit {
    hotspots.truncate(limit)
  }
  hotspots
}
