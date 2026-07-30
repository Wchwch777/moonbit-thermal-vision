///|
test "matrix construction and range" {
  let matrix = ThermalMatrix::from_rows([[12.0, 14.0, 13.5], [11.0, 18.0, 15.0]])
  inspect(matrix.width, content="3")
  inspect(matrix.height, content="2")
  inspect(matrix.get(ThermalPoint::new(x=1, y=1)), content="18")
  debug_inspect(matrix.range(), content="{ min: 11, max: 18 }")
}

///|
test "crop keeps values in scan order" {
  let matrix = ThermalMatrix::from_rows([
    [1.0, 2.0, 3.0],
    [4.0, 5.0, 6.0],
    [7.0, 8.0, 9.0],
  ])
  let crop = matrix.crop(origin=ThermalPoint::new(x=1, y=1), width=2, height=2)
  debug_inspect(crop.values, content="[5, 6, 8, 9]")
}

///|
test "parse mixed separated matrix text" {
  let text =
    #|21.5, 22.0 23.25
    #|24.0;25.5	26.75
    #|
  let matrix = parse_temperature_matrix(text)
  inspect(matrix.width, content="3")
  inspect(matrix.height, content="2")
  inspect(matrix.to_csv(), content="21.5,22,23.25\n24,25.5,26.75")
}

///|
test "colorize maps cold and hot endpoints" {
  let matrix = ThermalMatrix::from_rows([[10.0, 20.0]])
  let frame = matrix.colorize(palette=Gray)
  debug_inspect(
    frame.pixel(ThermalPoint::new(x=0, y=0)),
    content="{ r: 0, g: 0, b: 0 }",
  )
  debug_inspect(
    frame.pixel(ThermalPoint::new(x=1, y=0)),
    content="{ r: 255, g: 255, b: 255 }",
  )
}

///|
test "threshold regions group connected hot pixels" {
  let matrix = ThermalMatrix::from_rows([
    [20.0, 21.0, 50.0],
    [19.0, 47.0, 49.0],
    [45.0, 20.0, 18.0],
  ])
  let regions = matrix.threshold_regions(min_temp=45.0)
  inspect(regions.length(), content="2")
  inspect(regions[0].area(), content="3")
  debug_inspect(regions[0].peak, content="{ x: 2, y: 0 }")
  inspect(regions[1].area(), content="1")
}

///|
test "hotspot detection sorts local peaks" {
  let matrix = ThermalMatrix::from_rows([
    [20.0, 23.0, 20.0, 18.0],
    [21.0, 48.0, 25.0, 19.0],
    [20.0, 24.0, 22.0, 51.0],
  ])
  let spots = matrix.detect_hotspots(min_temp=40.0, radius=1, min_contrast=10.0)
  inspect(spots.length(), content="2")
  debug_inspect(spots[0].point, content="{ x: 3, y: 2 }")
  debug_inspect(spots[1].point, content="{ x: 1, y: 1 }")
}

///|
test "statistics and markdown report" {
  let matrix = ThermalMatrix::from_rows([[20.0, 30.0], [40.0, 50.0]])
  let stats = matrix.stats()
  inspect(stats.count, content="4")
  inspect(stats.mean, content="35")
  inspect(stats.p90, content="50")
  let report = matrix.inspect_threshold(threshold=35.0)
  assert_true(report.to_markdown().contains("Thermal Inspection Report"))
  inspect(report.regions.length(), content="1")
}
