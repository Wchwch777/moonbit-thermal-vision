///|
test "lut mapping agrees with endpoint semantics" {
  assert_eq(lut_resolution(), 2048)
  let matrix = ThermalMatrix::from_rows([[0.0, 10.0, 20.0]])
  let frame = matrix.colorize_lut(palette=Gray, range={ min: 0.0, max: 20.0 })
  assert_eq(frame.pixels[0], Rgb::new(r=0, g=0, b=0))
  assert_eq(frame.pixels[2], Rgb::new(r=255, g=255, b=255))
}

///|
test "roi geometry and profiles" {
  let matrix = ThermalMatrix::from_rows([
    [1.0, 2.0, 3.0],
    [4.0, 5.0, 6.0],
    [7.0, 8.0, 9.0],
  ])
  let roi = ThermalRoi::new(
    origin=ThermalPoint::new(x=1, y=1),
    width=2,
    height=2,
  )
  assert_true(roi.contains(ThermalPoint::new(x=2, y=2)))
  assert_eq(matrix.roi_mean_profile(roi), [5.5, 8.5])
  assert_eq(matrix.roi_column_profile(roi), [6.5, 7.5])
  assert_eq(
    matrix
    .line_profile(
      start=ThermalPoint::new(x=0, y=0),
      end=ThermalPoint::new(x=2, y=2),
    )
    .length(),
    3,
  )
}

///|
test "adaptive segmentation and signal peaks" {
  let matrix = ThermalMatrix::from_rows([
    [1.0, 9.0, 1.0],
    [1.0, 8.0, 1.0],
    [1.0, 1.0, 1.0],
  ])
  let mask = matrix.adaptive_mask(MeanOffset(2.0))
  assert_true(mask.count() >= 1)
  assert_true(matrix.boundary(mask).length() >= 1)
  assert_true(
    find_peaks([0.0, 2.0, 0.0, 3.0, 0.0], minimum_prominence=1.0).length() == 2,
  )
  assert_eq(integrate([1.0, 2.0, 3.0]), 4.0)
}

///|
test "tracking summarizes region motion" {
  let a : ThermalRegion = {
    id: 1,
    pixels: [ThermalPoint::new(x=1, y=1)],
    min_x: 1,
    min_y: 1,
    max_x: 1,
    max_y: 1,
    min_temp: 40.0,
    max_temp: 45.0,
    average_temp: 45.0,
    peak: ThermalPoint::new(x=1, y=1),
  }
  let b : ThermalRegion = {
    id: 1,
    pixels: [ThermalPoint::new(x=2, y=1)],
    min_x: 2,
    min_y: 1,
    max_x: 2,
    max_y: 1,
    min_temp: 41.0,
    max_temp: 46.0,
    average_temp: 46.0,
    peak: ThermalPoint::new(x=2, y=1),
  }
  let tracks = track_regions([[a], [b]], config={
    maximum_distance: 3,
    maximum_gap: 1,
    minimum_temperature: 35.0,
  })
  assert_eq(tracks.length(), 1)
  assert_eq(tracks[0].length(), 2)
  assert_eq(tracks[0].velocity(), ThermalPoint::new(x=1, y=0))
}
