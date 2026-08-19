///|
test "boundary regression 000" {
  let value = 0.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 001" {
  let value = 1.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 002" {
  let value = 2.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 003" {
  let value = 3.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 004" {
  let value = 4.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 005" {
  let value = 5.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 006" {
  let value = 6.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 007" {
  let value = 7.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 008" {
  let value = 8.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 009" {
  let value = 9.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 010" {
  let value = 10.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 011" {
  let value = 11.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 012" {
  let value = 12.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 013" {
  let value = 13.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 014" {
  let value = 14.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 015" {
  let value = 15.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 016" {
  let value = 16.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 017" {
  let value = 0.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 018" {
  let value = 1.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 019" {
  let value = 2.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 020" {
  let value = 3.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 021" {
  let value = 4.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 022" {
  let value = 5.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 023" {
  let value = 6.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 024" {
  let value = 7.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 025" {
  let value = 8.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 026" {
  let value = 9.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 027" {
  let value = 10.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 028" {
  let value = 11.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 029" {
  let value = 12.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 030" {
  let value = 13.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 031" {
  let value = 14.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 032" {
  let value = 15.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 033" {
  let value = 16.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 034" {
  let value = 0.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 035" {
  let value = 1.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 036" {
  let value = 2.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 037" {
  let value = 3.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 038" {
  let value = 4.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 039" {
  let value = 5.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 040" {
  let value = 6.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 041" {
  let value = 7.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 042" {
  let value = 8.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 043" {
  let value = 9.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 044" {
  let value = 10.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 045" {
  let value = 11.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 046" {
  let value = 12.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 047" {
  let value = 13.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 048" {
  let value = 14.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 049" {
  let value = 15.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 050" {
  let value = 16.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 051" {
  let value = 0.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 052" {
  let value = 1.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 053" {
  let value = 2.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 054" {
  let value = 3.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 055" {
  let value = 4.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 056" {
  let value = 5.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 057" {
  let value = 6.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 058" {
  let value = 7.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 059" {
  let value = 8.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 060" {
  let value = 9.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 061" {
  let value = 10.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 062" {
  let value = 11.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 063" {
  let value = 12.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 064" {
  let value = 13.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 065" {
  let value = 14.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 066" {
  let value = 15.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 067" {
  let value = 16.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 068" {
  let value = 0.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 069" {
  let value = 1.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 070" {
  let value = 2.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 071" {
  let value = 3.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 072" {
  let value = 4.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 073" {
  let value = 5.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 074" {
  let value = 6.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 075" {
  let value = 7.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 076" {
  let value = 8.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 077" {
  let value = 9.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 078" {
  let value = 10.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 079" {
  let value = 11.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 080" {
  let value = 12.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 081" {
  let value = 13.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 082" {
  let value = 14.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 083" {
  let value = 15.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 084" {
  let value = 16.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 085" {
  let value = 0.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 086" {
  let value = 1.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 087" {
  let value = 2.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 088" {
  let value = 3.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 089" {
  let value = 4.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 090" {
  let value = 5.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 091" {
  let value = 6.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 092" {
  let value = 7.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 093" {
  let value = 8.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 094" {
  let value = 9.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 095" {
  let value = 10.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 096" {
  let value = 11.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 097" {
  let value = 12.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 098" {
  let value = 13.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 099" {
  let value = 14.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 100" {
  let value = 15.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 101" {
  let value = 16.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 102" {
  let value = 0.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 103" {
  let value = 1.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 104" {
  let value = 2.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 105" {
  let value = 3.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 106" {
  let value = 4.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 107" {
  let value = 5.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 108" {
  let value = 6.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 109" {
  let value = 7.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 110" {
  let value = 8.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 111" {
  let value = 9.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 112" {
  let value = 10.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 113" {
  let value = 11.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 114" {
  let value = 12.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 115" {
  let value = 13.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 116" {
  let value = 14.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 117" {
  let value = 15.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 118" {
  let value = 16.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 119" {
  let value = 0.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 120" {
  let value = 1.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 121" {
  let value = 2.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 122" {
  let value = 3.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 123" {
  let value = 4.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 124" {
  let value = 5.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 125" {
  let value = 6.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 126" {
  let value = 7.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 127" {
  let value = 8.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 128" {
  let value = 9.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 129" {
  let value = 10.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 130" {
  let value = 11.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 131" {
  let value = 12.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 132" {
  let value = 13.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 133" {
  let value = 14.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 134" {
  let value = 15.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 135" {
  let value = 16.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 136" {
  let value = 0.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 137" {
  let value = 1.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 138" {
  let value = 2.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 139" {
  let value = 3.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 140" {
  let value = 4.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 141" {
  let value = 5.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 142" {
  let value = 6.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 143" {
  let value = 7.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 144" {
  let value = 8.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 145" {
  let value = 9.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 146" {
  let value = 10.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 147" {
  let value = 11.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 148" {
  let value = 12.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 149" {
  let value = 13.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 150" {
  let value = 14.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 151" {
  let value = 15.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 152" {
  let value = 16.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 153" {
  let value = 0.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 154" {
  let value = 1.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 155" {
  let value = 2.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 156" {
  let value = 3.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 157" {
  let value = 4.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 158" {
  let value = 5.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 159" {
  let value = 6.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 160" {
  let value = 7.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 161" {
  let value = 8.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 162" {
  let value = 9.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 163" {
  let value = 10.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 164" {
  let value = 11.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 165" {
  let value = 12.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 166" {
  let value = 13.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 167" {
  let value = 14.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 168" {
  let value = 15.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 169" {
  let value = 16.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 170" {
  let value = 0.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 171" {
  let value = 1.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 172" {
  let value = 2.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 173" {
  let value = 3.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 174" {
  let value = 4.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 175" {
  let value = 5.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 176" {
  let value = 6.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 177" {
  let value = 7.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 178" {
  let value = 8.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 179" {
  let value = 9.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 180" {
  let value = 10.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 181" {
  let value = 11.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 182" {
  let value = 12.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 183" {
  let value = 13.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 184" {
  let value = 14.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 185" {
  let value = 15.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 186" {
  let value = 16.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 187" {
  let value = 0.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 188" {
  let value = 1.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 189" {
  let value = 2.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 190" {
  let value = 3.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 191" {
  let value = 4.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 192" {
  let value = 5.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 193" {
  let value = 6.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 194" {
  let value = 7.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 195" {
  let value = 8.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 196" {
  let value = 9.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 197" {
  let value = 10.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 198" {
  let value = 11.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 199" {
  let value = 12.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 200" {
  let value = 13.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 201" {
  let value = 14.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 202" {
  let value = 15.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 203" {
  let value = 16.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 204" {
  let value = 0.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 205" {
  let value = 1.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 206" {
  let value = 2.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 207" {
  let value = 3.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 208" {
  let value = 4.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 209" {
  let value = 5.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 210" {
  let value = 6.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 211" {
  let value = 7.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 212" {
  let value = 8.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 213" {
  let value = 9.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 214" {
  let value = 10.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 215" {
  let value = 11.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 216" {
  let value = 12.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 217" {
  let value = 13.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 218" {
  let value = 14.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 219" {
  let value = 15.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 220" {
  let value = 16.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 221" {
  let value = 0.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 222" {
  let value = 1.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 223" {
  let value = 2.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 224" {
  let value = 3.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 225" {
  let value = 4.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 226" {
  let value = 5.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 227" {
  let value = 6.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 228" {
  let value = 7.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 229" {
  let value = 8.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 230" {
  let value = 9.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 231" {
  let value = 10.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 232" {
  let value = 11.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 233" {
  let value = 12.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 234" {
  let value = 13.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 235" {
  let value = 14.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 236" {
  let value = 15.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 237" {
  let value = 16.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 238" {
  let value = 0.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 239" {
  let value = 1.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 240" {
  let value = 2.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 241" {
  let value = 3.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 242" {
  let value = 4.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 243" {
  let value = 5.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 244" {
  let value = 6.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 245" {
  let value = 7.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 246" {
  let value = 8.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 247" {
  let value = 9.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 248" {
  let value = 10.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 249" {
  let value = 11.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 250" {
  let value = 12.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 251" {
  let value = 13.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 252" {
  let value = 14.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 253" {
  let value = 15.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 254" {
  let value = 16.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 255" {
  let value = 0.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 256" {
  let value = 1.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 257" {
  let value = 2.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 258" {
  let value = 3.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}

///|
test "boundary regression 259" {
  let value = 4.0
  let matrix = ThermalMatrix::from_rows([[value]])
  let point = ThermalPoint::new(x=0, y=0)
  assert_eq(matrix.get(point), value)
  assert_eq(matrix.row(0)[0], value)
  assert_eq(matrix.threshold_mask(min_temp=value).count(), 1)
  assert_eq(matrix.threshold_regions(min_temp=value)[0].area(), 1)
  assert_eq(matrix.colorize(palette=Gray).pixel(point).r, 0)
  assert_eq(matrix.delta(matrix).changed, 0)
  assert_eq(matrix.filter(radius=0, kind=Mean).values[0], value)
}
