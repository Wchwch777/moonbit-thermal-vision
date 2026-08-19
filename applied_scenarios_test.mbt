///|
test "matrix boundary scenario 000" {
  let matrix = ThermalMatrix::from_rows([[0.0, 0.0], [0.0, 0.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 001" {
  let matrix = ThermalMatrix::from_rows([[1.0, 3.0], [5.0, 7.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 002" {
  let matrix = ThermalMatrix::from_rows([[2.0, 6.0], [10.0, 14.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 003" {
  let matrix = ThermalMatrix::from_rows([[3.0, 9.0], [15.0, 21.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 004" {
  let matrix = ThermalMatrix::from_rows([[4.0, 12.0], [20.0, 28.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 005" {
  let matrix = ThermalMatrix::from_rows([[5.0, 15.0], [25.0, 4.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 006" {
  let matrix = ThermalMatrix::from_rows([[6.0, 18.0], [30.0, 11.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 007" {
  let matrix = ThermalMatrix::from_rows([[7.0, 21.0], [4.0, 18.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 008" {
  let matrix = ThermalMatrix::from_rows([[8.0, 24.0], [9.0, 25.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 009" {
  let matrix = ThermalMatrix::from_rows([[9.0, 27.0], [14.0, 1.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 010" {
  let matrix = ThermalMatrix::from_rows([[10.0, 30.0], [19.0, 8.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 011" {
  let matrix = ThermalMatrix::from_rows([[11.0, 2.0], [24.0, 15.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 012" {
  let matrix = ThermalMatrix::from_rows([[12.0, 5.0], [29.0, 22.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 013" {
  let matrix = ThermalMatrix::from_rows([[13.0, 8.0], [3.0, 29.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 014" {
  let matrix = ThermalMatrix::from_rows([[14.0, 11.0], [8.0, 5.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 015" {
  let matrix = ThermalMatrix::from_rows([[15.0, 14.0], [13.0, 12.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 016" {
  let matrix = ThermalMatrix::from_rows([[16.0, 17.0], [18.0, 19.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 017" {
  let matrix = ThermalMatrix::from_rows([[17.0, 20.0], [23.0, 26.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 018" {
  let matrix = ThermalMatrix::from_rows([[18.0, 23.0], [28.0, 2.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 019" {
  let matrix = ThermalMatrix::from_rows([[19.0, 26.0], [2.0, 9.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 020" {
  let matrix = ThermalMatrix::from_rows([[20.0, 29.0], [7.0, 16.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 021" {
  let matrix = ThermalMatrix::from_rows([[21.0, 1.0], [12.0, 23.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 022" {
  let matrix = ThermalMatrix::from_rows([[22.0, 4.0], [17.0, 30.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 023" {
  let matrix = ThermalMatrix::from_rows([[23.0, 7.0], [22.0, 6.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 024" {
  let matrix = ThermalMatrix::from_rows([[24.0, 10.0], [27.0, 13.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 025" {
  let matrix = ThermalMatrix::from_rows([[25.0, 13.0], [1.0, 20.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 026" {
  let matrix = ThermalMatrix::from_rows([[26.0, 16.0], [6.0, 27.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 027" {
  let matrix = ThermalMatrix::from_rows([[27.0, 19.0], [11.0, 3.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 028" {
  let matrix = ThermalMatrix::from_rows([[28.0, 22.0], [16.0, 10.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 029" {
  let matrix = ThermalMatrix::from_rows([[29.0, 25.0], [21.0, 17.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 030" {
  let matrix = ThermalMatrix::from_rows([[30.0, 28.0], [26.0, 24.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 031" {
  let matrix = ThermalMatrix::from_rows([[0.0, 0.0], [0.0, 0.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 032" {
  let matrix = ThermalMatrix::from_rows([[1.0, 3.0], [5.0, 7.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 033" {
  let matrix = ThermalMatrix::from_rows([[2.0, 6.0], [10.0, 14.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 034" {
  let matrix = ThermalMatrix::from_rows([[3.0, 9.0], [15.0, 21.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 035" {
  let matrix = ThermalMatrix::from_rows([[4.0, 12.0], [20.0, 28.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 036" {
  let matrix = ThermalMatrix::from_rows([[5.0, 15.0], [25.0, 4.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 037" {
  let matrix = ThermalMatrix::from_rows([[6.0, 18.0], [30.0, 11.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 038" {
  let matrix = ThermalMatrix::from_rows([[7.0, 21.0], [4.0, 18.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 039" {
  let matrix = ThermalMatrix::from_rows([[8.0, 24.0], [9.0, 25.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 040" {
  let matrix = ThermalMatrix::from_rows([[9.0, 27.0], [14.0, 1.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 041" {
  let matrix = ThermalMatrix::from_rows([[10.0, 30.0], [19.0, 8.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 042" {
  let matrix = ThermalMatrix::from_rows([[11.0, 2.0], [24.0, 15.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 043" {
  let matrix = ThermalMatrix::from_rows([[12.0, 5.0], [29.0, 22.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 044" {
  let matrix = ThermalMatrix::from_rows([[13.0, 8.0], [3.0, 29.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 045" {
  let matrix = ThermalMatrix::from_rows([[14.0, 11.0], [8.0, 5.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 046" {
  let matrix = ThermalMatrix::from_rows([[15.0, 14.0], [13.0, 12.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 047" {
  let matrix = ThermalMatrix::from_rows([[16.0, 17.0], [18.0, 19.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 048" {
  let matrix = ThermalMatrix::from_rows([[17.0, 20.0], [23.0, 26.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 049" {
  let matrix = ThermalMatrix::from_rows([[18.0, 23.0], [28.0, 2.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 050" {
  let matrix = ThermalMatrix::from_rows([[19.0, 26.0], [2.0, 9.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 051" {
  let matrix = ThermalMatrix::from_rows([[20.0, 29.0], [7.0, 16.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 052" {
  let matrix = ThermalMatrix::from_rows([[21.0, 1.0], [12.0, 23.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 053" {
  let matrix = ThermalMatrix::from_rows([[22.0, 4.0], [17.0, 30.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 054" {
  let matrix = ThermalMatrix::from_rows([[23.0, 7.0], [22.0, 6.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 055" {
  let matrix = ThermalMatrix::from_rows([[24.0, 10.0], [27.0, 13.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 056" {
  let matrix = ThermalMatrix::from_rows([[25.0, 13.0], [1.0, 20.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 057" {
  let matrix = ThermalMatrix::from_rows([[26.0, 16.0], [6.0, 27.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 058" {
  let matrix = ThermalMatrix::from_rows([[27.0, 19.0], [11.0, 3.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 059" {
  let matrix = ThermalMatrix::from_rows([[28.0, 22.0], [16.0, 10.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 060" {
  let matrix = ThermalMatrix::from_rows([[29.0, 25.0], [21.0, 17.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 061" {
  let matrix = ThermalMatrix::from_rows([[30.0, 28.0], [26.0, 24.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 062" {
  let matrix = ThermalMatrix::from_rows([[0.0, 0.0], [0.0, 0.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 063" {
  let matrix = ThermalMatrix::from_rows([[1.0, 3.0], [5.0, 7.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 064" {
  let matrix = ThermalMatrix::from_rows([[2.0, 6.0], [10.0, 14.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 065" {
  let matrix = ThermalMatrix::from_rows([[3.0, 9.0], [15.0, 21.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 066" {
  let matrix = ThermalMatrix::from_rows([[4.0, 12.0], [20.0, 28.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 067" {
  let matrix = ThermalMatrix::from_rows([[5.0, 15.0], [25.0, 4.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 068" {
  let matrix = ThermalMatrix::from_rows([[6.0, 18.0], [30.0, 11.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 069" {
  let matrix = ThermalMatrix::from_rows([[7.0, 21.0], [4.0, 18.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 070" {
  let matrix = ThermalMatrix::from_rows([[8.0, 24.0], [9.0, 25.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 071" {
  let matrix = ThermalMatrix::from_rows([[9.0, 27.0], [14.0, 1.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 072" {
  let matrix = ThermalMatrix::from_rows([[10.0, 30.0], [19.0, 8.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 073" {
  let matrix = ThermalMatrix::from_rows([[11.0, 2.0], [24.0, 15.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 074" {
  let matrix = ThermalMatrix::from_rows([[12.0, 5.0], [29.0, 22.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 075" {
  let matrix = ThermalMatrix::from_rows([[13.0, 8.0], [3.0, 29.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 076" {
  let matrix = ThermalMatrix::from_rows([[14.0, 11.0], [8.0, 5.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 077" {
  let matrix = ThermalMatrix::from_rows([[15.0, 14.0], [13.0, 12.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 078" {
  let matrix = ThermalMatrix::from_rows([[16.0, 17.0], [18.0, 19.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 079" {
  let matrix = ThermalMatrix::from_rows([[17.0, 20.0], [23.0, 26.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 080" {
  let matrix = ThermalMatrix::from_rows([[18.0, 23.0], [28.0, 2.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 081" {
  let matrix = ThermalMatrix::from_rows([[19.0, 26.0], [2.0, 9.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 082" {
  let matrix = ThermalMatrix::from_rows([[20.0, 29.0], [7.0, 16.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 083" {
  let matrix = ThermalMatrix::from_rows([[21.0, 1.0], [12.0, 23.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 084" {
  let matrix = ThermalMatrix::from_rows([[22.0, 4.0], [17.0, 30.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 085" {
  let matrix = ThermalMatrix::from_rows([[23.0, 7.0], [22.0, 6.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 086" {
  let matrix = ThermalMatrix::from_rows([[24.0, 10.0], [27.0, 13.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 087" {
  let matrix = ThermalMatrix::from_rows([[25.0, 13.0], [1.0, 20.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 088" {
  let matrix = ThermalMatrix::from_rows([[26.0, 16.0], [6.0, 27.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 089" {
  let matrix = ThermalMatrix::from_rows([[27.0, 19.0], [11.0, 3.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 090" {
  let matrix = ThermalMatrix::from_rows([[28.0, 22.0], [16.0, 10.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 091" {
  let matrix = ThermalMatrix::from_rows([[29.0, 25.0], [21.0, 17.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 092" {
  let matrix = ThermalMatrix::from_rows([[30.0, 28.0], [26.0, 24.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 093" {
  let matrix = ThermalMatrix::from_rows([[0.0, 0.0], [0.0, 0.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 094" {
  let matrix = ThermalMatrix::from_rows([[1.0, 3.0], [5.0, 7.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 095" {
  let matrix = ThermalMatrix::from_rows([[2.0, 6.0], [10.0, 14.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 096" {
  let matrix = ThermalMatrix::from_rows([[3.0, 9.0], [15.0, 21.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 097" {
  let matrix = ThermalMatrix::from_rows([[4.0, 12.0], [20.0, 28.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 098" {
  let matrix = ThermalMatrix::from_rows([[5.0, 15.0], [25.0, 4.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 099" {
  let matrix = ThermalMatrix::from_rows([[6.0, 18.0], [30.0, 11.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 100" {
  let matrix = ThermalMatrix::from_rows([[7.0, 21.0], [4.0, 18.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 101" {
  let matrix = ThermalMatrix::from_rows([[8.0, 24.0], [9.0, 25.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 102" {
  let matrix = ThermalMatrix::from_rows([[9.0, 27.0], [14.0, 1.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 103" {
  let matrix = ThermalMatrix::from_rows([[10.0, 30.0], [19.0, 8.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 104" {
  let matrix = ThermalMatrix::from_rows([[11.0, 2.0], [24.0, 15.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 105" {
  let matrix = ThermalMatrix::from_rows([[12.0, 5.0], [29.0, 22.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 106" {
  let matrix = ThermalMatrix::from_rows([[13.0, 8.0], [3.0, 29.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 107" {
  let matrix = ThermalMatrix::from_rows([[14.0, 11.0], [8.0, 5.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 108" {
  let matrix = ThermalMatrix::from_rows([[15.0, 14.0], [13.0, 12.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 109" {
  let matrix = ThermalMatrix::from_rows([[16.0, 17.0], [18.0, 19.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 110" {
  let matrix = ThermalMatrix::from_rows([[17.0, 20.0], [23.0, 26.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 111" {
  let matrix = ThermalMatrix::from_rows([[18.0, 23.0], [28.0, 2.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 112" {
  let matrix = ThermalMatrix::from_rows([[19.0, 26.0], [2.0, 9.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 113" {
  let matrix = ThermalMatrix::from_rows([[20.0, 29.0], [7.0, 16.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 114" {
  let matrix = ThermalMatrix::from_rows([[21.0, 1.0], [12.0, 23.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 115" {
  let matrix = ThermalMatrix::from_rows([[22.0, 4.0], [17.0, 30.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 116" {
  let matrix = ThermalMatrix::from_rows([[23.0, 7.0], [22.0, 6.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 117" {
  let matrix = ThermalMatrix::from_rows([[24.0, 10.0], [27.0, 13.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 118" {
  let matrix = ThermalMatrix::from_rows([[25.0, 13.0], [1.0, 20.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 119" {
  let matrix = ThermalMatrix::from_rows([[26.0, 16.0], [6.0, 27.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 120" {
  let matrix = ThermalMatrix::from_rows([[27.0, 19.0], [11.0, 3.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 121" {
  let matrix = ThermalMatrix::from_rows([[28.0, 22.0], [16.0, 10.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 122" {
  let matrix = ThermalMatrix::from_rows([[29.0, 25.0], [21.0, 17.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 123" {
  let matrix = ThermalMatrix::from_rows([[30.0, 28.0], [26.0, 24.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 124" {
  let matrix = ThermalMatrix::from_rows([[0.0, 0.0], [0.0, 0.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 125" {
  let matrix = ThermalMatrix::from_rows([[1.0, 3.0], [5.0, 7.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 126" {
  let matrix = ThermalMatrix::from_rows([[2.0, 6.0], [10.0, 14.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 127" {
  let matrix = ThermalMatrix::from_rows([[3.0, 9.0], [15.0, 21.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 128" {
  let matrix = ThermalMatrix::from_rows([[4.0, 12.0], [20.0, 28.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 129" {
  let matrix = ThermalMatrix::from_rows([[5.0, 15.0], [25.0, 4.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 130" {
  let matrix = ThermalMatrix::from_rows([[6.0, 18.0], [30.0, 11.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 131" {
  let matrix = ThermalMatrix::from_rows([[7.0, 21.0], [4.0, 18.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 132" {
  let matrix = ThermalMatrix::from_rows([[8.0, 24.0], [9.0, 25.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 133" {
  let matrix = ThermalMatrix::from_rows([[9.0, 27.0], [14.0, 1.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 134" {
  let matrix = ThermalMatrix::from_rows([[10.0, 30.0], [19.0, 8.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 135" {
  let matrix = ThermalMatrix::from_rows([[11.0, 2.0], [24.0, 15.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 136" {
  let matrix = ThermalMatrix::from_rows([[12.0, 5.0], [29.0, 22.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 137" {
  let matrix = ThermalMatrix::from_rows([[13.0, 8.0], [3.0, 29.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 138" {
  let matrix = ThermalMatrix::from_rows([[14.0, 11.0], [8.0, 5.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 139" {
  let matrix = ThermalMatrix::from_rows([[15.0, 14.0], [13.0, 12.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 140" {
  let matrix = ThermalMatrix::from_rows([[16.0, 17.0], [18.0, 19.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 141" {
  let matrix = ThermalMatrix::from_rows([[17.0, 20.0], [23.0, 26.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 142" {
  let matrix = ThermalMatrix::from_rows([[18.0, 23.0], [28.0, 2.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 143" {
  let matrix = ThermalMatrix::from_rows([[19.0, 26.0], [2.0, 9.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 144" {
  let matrix = ThermalMatrix::from_rows([[20.0, 29.0], [7.0, 16.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 145" {
  let matrix = ThermalMatrix::from_rows([[21.0, 1.0], [12.0, 23.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 146" {
  let matrix = ThermalMatrix::from_rows([[22.0, 4.0], [17.0, 30.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 147" {
  let matrix = ThermalMatrix::from_rows([[23.0, 7.0], [22.0, 6.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 148" {
  let matrix = ThermalMatrix::from_rows([[24.0, 10.0], [27.0, 13.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 149" {
  let matrix = ThermalMatrix::from_rows([[25.0, 13.0], [1.0, 20.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 150" {
  let matrix = ThermalMatrix::from_rows([[26.0, 16.0], [6.0, 27.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 151" {
  let matrix = ThermalMatrix::from_rows([[27.0, 19.0], [11.0, 3.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 152" {
  let matrix = ThermalMatrix::from_rows([[28.0, 22.0], [16.0, 10.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 153" {
  let matrix = ThermalMatrix::from_rows([[29.0, 25.0], [21.0, 17.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 154" {
  let matrix = ThermalMatrix::from_rows([[30.0, 28.0], [26.0, 24.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 155" {
  let matrix = ThermalMatrix::from_rows([[0.0, 0.0], [0.0, 0.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 156" {
  let matrix = ThermalMatrix::from_rows([[1.0, 3.0], [5.0, 7.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 157" {
  let matrix = ThermalMatrix::from_rows([[2.0, 6.0], [10.0, 14.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 158" {
  let matrix = ThermalMatrix::from_rows([[3.0, 9.0], [15.0, 21.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 159" {
  let matrix = ThermalMatrix::from_rows([[4.0, 12.0], [20.0, 28.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 160" {
  let matrix = ThermalMatrix::from_rows([[5.0, 15.0], [25.0, 4.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 161" {
  let matrix = ThermalMatrix::from_rows([[6.0, 18.0], [30.0, 11.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 162" {
  let matrix = ThermalMatrix::from_rows([[7.0, 21.0], [4.0, 18.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 163" {
  let matrix = ThermalMatrix::from_rows([[8.0, 24.0], [9.0, 25.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 164" {
  let matrix = ThermalMatrix::from_rows([[9.0, 27.0], [14.0, 1.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 165" {
  let matrix = ThermalMatrix::from_rows([[10.0, 30.0], [19.0, 8.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 166" {
  let matrix = ThermalMatrix::from_rows([[11.0, 2.0], [24.0, 15.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 167" {
  let matrix = ThermalMatrix::from_rows([[12.0, 5.0], [29.0, 22.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 168" {
  let matrix = ThermalMatrix::from_rows([[13.0, 8.0], [3.0, 29.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 169" {
  let matrix = ThermalMatrix::from_rows([[14.0, 11.0], [8.0, 5.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 170" {
  let matrix = ThermalMatrix::from_rows([[15.0, 14.0], [13.0, 12.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 171" {
  let matrix = ThermalMatrix::from_rows([[16.0, 17.0], [18.0, 19.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 172" {
  let matrix = ThermalMatrix::from_rows([[17.0, 20.0], [23.0, 26.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 173" {
  let matrix = ThermalMatrix::from_rows([[18.0, 23.0], [28.0, 2.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 174" {
  let matrix = ThermalMatrix::from_rows([[19.0, 26.0], [2.0, 9.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 175" {
  let matrix = ThermalMatrix::from_rows([[20.0, 29.0], [7.0, 16.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 176" {
  let matrix = ThermalMatrix::from_rows([[21.0, 1.0], [12.0, 23.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 177" {
  let matrix = ThermalMatrix::from_rows([[22.0, 4.0], [17.0, 30.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 178" {
  let matrix = ThermalMatrix::from_rows([[23.0, 7.0], [22.0, 6.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 179" {
  let matrix = ThermalMatrix::from_rows([[24.0, 10.0], [27.0, 13.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 180" {
  let matrix = ThermalMatrix::from_rows([[25.0, 13.0], [1.0, 20.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 181" {
  let matrix = ThermalMatrix::from_rows([[26.0, 16.0], [6.0, 27.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 182" {
  let matrix = ThermalMatrix::from_rows([[27.0, 19.0], [11.0, 3.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 183" {
  let matrix = ThermalMatrix::from_rows([[28.0, 22.0], [16.0, 10.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 184" {
  let matrix = ThermalMatrix::from_rows([[29.0, 25.0], [21.0, 17.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 185" {
  let matrix = ThermalMatrix::from_rows([[30.0, 28.0], [26.0, 24.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 186" {
  let matrix = ThermalMatrix::from_rows([[0.0, 0.0], [0.0, 0.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 187" {
  let matrix = ThermalMatrix::from_rows([[1.0, 3.0], [5.0, 7.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 188" {
  let matrix = ThermalMatrix::from_rows([[2.0, 6.0], [10.0, 14.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 189" {
  let matrix = ThermalMatrix::from_rows([[3.0, 9.0], [15.0, 21.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 190" {
  let matrix = ThermalMatrix::from_rows([[4.0, 12.0], [20.0, 28.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 191" {
  let matrix = ThermalMatrix::from_rows([[5.0, 15.0], [25.0, 4.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 192" {
  let matrix = ThermalMatrix::from_rows([[6.0, 18.0], [30.0, 11.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 193" {
  let matrix = ThermalMatrix::from_rows([[7.0, 21.0], [4.0, 18.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 194" {
  let matrix = ThermalMatrix::from_rows([[8.0, 24.0], [9.0, 25.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 195" {
  let matrix = ThermalMatrix::from_rows([[9.0, 27.0], [14.0, 1.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 196" {
  let matrix = ThermalMatrix::from_rows([[10.0, 30.0], [19.0, 8.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 197" {
  let matrix = ThermalMatrix::from_rows([[11.0, 2.0], [24.0, 15.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 198" {
  let matrix = ThermalMatrix::from_rows([[12.0, 5.0], [29.0, 22.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 199" {
  let matrix = ThermalMatrix::from_rows([[13.0, 8.0], [3.0, 29.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 200" {
  let matrix = ThermalMatrix::from_rows([[14.0, 11.0], [8.0, 5.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 201" {
  let matrix = ThermalMatrix::from_rows([[15.0, 14.0], [13.0, 12.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 202" {
  let matrix = ThermalMatrix::from_rows([[16.0, 17.0], [18.0, 19.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 203" {
  let matrix = ThermalMatrix::from_rows([[17.0, 20.0], [23.0, 26.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 204" {
  let matrix = ThermalMatrix::from_rows([[18.0, 23.0], [28.0, 2.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 205" {
  let matrix = ThermalMatrix::from_rows([[19.0, 26.0], [2.0, 9.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 206" {
  let matrix = ThermalMatrix::from_rows([[20.0, 29.0], [7.0, 16.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 207" {
  let matrix = ThermalMatrix::from_rows([[21.0, 1.0], [12.0, 23.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 208" {
  let matrix = ThermalMatrix::from_rows([[22.0, 4.0], [17.0, 30.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 209" {
  let matrix = ThermalMatrix::from_rows([[23.0, 7.0], [22.0, 6.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 210" {
  let matrix = ThermalMatrix::from_rows([[24.0, 10.0], [27.0, 13.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 211" {
  let matrix = ThermalMatrix::from_rows([[25.0, 13.0], [1.0, 20.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 212" {
  let matrix = ThermalMatrix::from_rows([[26.0, 16.0], [6.0, 27.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 213" {
  let matrix = ThermalMatrix::from_rows([[27.0, 19.0], [11.0, 3.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 214" {
  let matrix = ThermalMatrix::from_rows([[28.0, 22.0], [16.0, 10.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 215" {
  let matrix = ThermalMatrix::from_rows([[29.0, 25.0], [21.0, 17.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 216" {
  let matrix = ThermalMatrix::from_rows([[30.0, 28.0], [26.0, 24.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 217" {
  let matrix = ThermalMatrix::from_rows([[0.0, 0.0], [0.0, 0.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 218" {
  let matrix = ThermalMatrix::from_rows([[1.0, 3.0], [5.0, 7.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 219" {
  let matrix = ThermalMatrix::from_rows([[2.0, 6.0], [10.0, 14.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 220" {
  let matrix = ThermalMatrix::from_rows([[3.0, 9.0], [15.0, 21.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 221" {
  let matrix = ThermalMatrix::from_rows([[4.0, 12.0], [20.0, 28.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 222" {
  let matrix = ThermalMatrix::from_rows([[5.0, 15.0], [25.0, 4.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 223" {
  let matrix = ThermalMatrix::from_rows([[6.0, 18.0], [30.0, 11.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 224" {
  let matrix = ThermalMatrix::from_rows([[7.0, 21.0], [4.0, 18.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 225" {
  let matrix = ThermalMatrix::from_rows([[8.0, 24.0], [9.0, 25.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 226" {
  let matrix = ThermalMatrix::from_rows([[9.0, 27.0], [14.0, 1.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 227" {
  let matrix = ThermalMatrix::from_rows([[10.0, 30.0], [19.0, 8.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 228" {
  let matrix = ThermalMatrix::from_rows([[11.0, 2.0], [24.0, 15.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 229" {
  let matrix = ThermalMatrix::from_rows([[12.0, 5.0], [29.0, 22.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 230" {
  let matrix = ThermalMatrix::from_rows([[13.0, 8.0], [3.0, 29.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 231" {
  let matrix = ThermalMatrix::from_rows([[14.0, 11.0], [8.0, 5.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 232" {
  let matrix = ThermalMatrix::from_rows([[15.0, 14.0], [13.0, 12.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 233" {
  let matrix = ThermalMatrix::from_rows([[16.0, 17.0], [18.0, 19.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 234" {
  let matrix = ThermalMatrix::from_rows([[17.0, 20.0], [23.0, 26.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 235" {
  let matrix = ThermalMatrix::from_rows([[18.0, 23.0], [28.0, 2.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 236" {
  let matrix = ThermalMatrix::from_rows([[19.0, 26.0], [2.0, 9.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 237" {
  let matrix = ThermalMatrix::from_rows([[20.0, 29.0], [7.0, 16.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 238" {
  let matrix = ThermalMatrix::from_rows([[21.0, 1.0], [12.0, 23.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 239" {
  let matrix = ThermalMatrix::from_rows([[22.0, 4.0], [17.0, 30.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 240" {
  let matrix = ThermalMatrix::from_rows([[23.0, 7.0], [22.0, 6.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 241" {
  let matrix = ThermalMatrix::from_rows([[24.0, 10.0], [27.0, 13.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 242" {
  let matrix = ThermalMatrix::from_rows([[25.0, 13.0], [1.0, 20.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 243" {
  let matrix = ThermalMatrix::from_rows([[26.0, 16.0], [6.0, 27.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 244" {
  let matrix = ThermalMatrix::from_rows([[27.0, 19.0], [11.0, 3.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 245" {
  let matrix = ThermalMatrix::from_rows([[28.0, 22.0], [16.0, 10.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 246" {
  let matrix = ThermalMatrix::from_rows([[29.0, 25.0], [21.0, 17.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 247" {
  let matrix = ThermalMatrix::from_rows([[30.0, 28.0], [26.0, 24.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 248" {
  let matrix = ThermalMatrix::from_rows([[0.0, 0.0], [0.0, 0.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 249" {
  let matrix = ThermalMatrix::from_rows([[1.0, 3.0], [5.0, 7.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 250" {
  let matrix = ThermalMatrix::from_rows([[2.0, 6.0], [10.0, 14.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 251" {
  let matrix = ThermalMatrix::from_rows([[3.0, 9.0], [15.0, 21.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 252" {
  let matrix = ThermalMatrix::from_rows([[4.0, 12.0], [20.0, 28.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 253" {
  let matrix = ThermalMatrix::from_rows([[5.0, 15.0], [25.0, 4.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 254" {
  let matrix = ThermalMatrix::from_rows([[6.0, 18.0], [30.0, 11.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 255" {
  let matrix = ThermalMatrix::from_rows([[7.0, 21.0], [4.0, 18.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 256" {
  let matrix = ThermalMatrix::from_rows([[8.0, 24.0], [9.0, 25.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 257" {
  let matrix = ThermalMatrix::from_rows([[9.0, 27.0], [14.0, 1.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 258" {
  let matrix = ThermalMatrix::from_rows([[10.0, 30.0], [19.0, 8.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 259" {
  let matrix = ThermalMatrix::from_rows([[11.0, 2.0], [24.0, 15.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 260" {
  let matrix = ThermalMatrix::from_rows([[12.0, 5.0], [29.0, 22.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 261" {
  let matrix = ThermalMatrix::from_rows([[13.0, 8.0], [3.0, 29.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 262" {
  let matrix = ThermalMatrix::from_rows([[14.0, 11.0], [8.0, 5.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 263" {
  let matrix = ThermalMatrix::from_rows([[15.0, 14.0], [13.0, 12.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 264" {
  let matrix = ThermalMatrix::from_rows([[16.0, 17.0], [18.0, 19.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 265" {
  let matrix = ThermalMatrix::from_rows([[17.0, 20.0], [23.0, 26.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 266" {
  let matrix = ThermalMatrix::from_rows([[18.0, 23.0], [28.0, 2.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 267" {
  let matrix = ThermalMatrix::from_rows([[19.0, 26.0], [2.0, 9.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 268" {
  let matrix = ThermalMatrix::from_rows([[20.0, 29.0], [7.0, 16.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 269" {
  let matrix = ThermalMatrix::from_rows([[21.0, 1.0], [12.0, 23.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 270" {
  let matrix = ThermalMatrix::from_rows([[22.0, 4.0], [17.0, 30.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 271" {
  let matrix = ThermalMatrix::from_rows([[23.0, 7.0], [22.0, 6.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 272" {
  let matrix = ThermalMatrix::from_rows([[24.0, 10.0], [27.0, 13.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 273" {
  let matrix = ThermalMatrix::from_rows([[25.0, 13.0], [1.0, 20.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 274" {
  let matrix = ThermalMatrix::from_rows([[26.0, 16.0], [6.0, 27.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 275" {
  let matrix = ThermalMatrix::from_rows([[27.0, 19.0], [11.0, 3.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 276" {
  let matrix = ThermalMatrix::from_rows([[28.0, 22.0], [16.0, 10.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 277" {
  let matrix = ThermalMatrix::from_rows([[29.0, 25.0], [21.0, 17.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 278" {
  let matrix = ThermalMatrix::from_rows([[30.0, 28.0], [26.0, 24.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 279" {
  let matrix = ThermalMatrix::from_rows([[0.0, 0.0], [0.0, 0.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 280" {
  let matrix = ThermalMatrix::from_rows([[1.0, 3.0], [5.0, 7.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 281" {
  let matrix = ThermalMatrix::from_rows([[2.0, 6.0], [10.0, 14.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 282" {
  let matrix = ThermalMatrix::from_rows([[3.0, 9.0], [15.0, 21.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 283" {
  let matrix = ThermalMatrix::from_rows([[4.0, 12.0], [20.0, 28.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 284" {
  let matrix = ThermalMatrix::from_rows([[5.0, 15.0], [25.0, 4.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 285" {
  let matrix = ThermalMatrix::from_rows([[6.0, 18.0], [30.0, 11.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 286" {
  let matrix = ThermalMatrix::from_rows([[7.0, 21.0], [4.0, 18.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 287" {
  let matrix = ThermalMatrix::from_rows([[8.0, 24.0], [9.0, 25.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 288" {
  let matrix = ThermalMatrix::from_rows([[9.0, 27.0], [14.0, 1.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 289" {
  let matrix = ThermalMatrix::from_rows([[10.0, 30.0], [19.0, 8.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 290" {
  let matrix = ThermalMatrix::from_rows([[11.0, 2.0], [24.0, 15.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 291" {
  let matrix = ThermalMatrix::from_rows([[12.0, 5.0], [29.0, 22.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 292" {
  let matrix = ThermalMatrix::from_rows([[13.0, 8.0], [3.0, 29.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 293" {
  let matrix = ThermalMatrix::from_rows([[14.0, 11.0], [8.0, 5.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 294" {
  let matrix = ThermalMatrix::from_rows([[15.0, 14.0], [13.0, 12.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 295" {
  let matrix = ThermalMatrix::from_rows([[16.0, 17.0], [18.0, 19.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 296" {
  let matrix = ThermalMatrix::from_rows([[17.0, 20.0], [23.0, 26.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 297" {
  let matrix = ThermalMatrix::from_rows([[18.0, 23.0], [28.0, 2.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 298" {
  let matrix = ThermalMatrix::from_rows([[19.0, 26.0], [2.0, 9.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 299" {
  let matrix = ThermalMatrix::from_rows([[20.0, 29.0], [7.0, 16.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 300" {
  let matrix = ThermalMatrix::from_rows([[21.0, 1.0], [12.0, 23.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 301" {
  let matrix = ThermalMatrix::from_rows([[22.0, 4.0], [17.0, 30.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 302" {
  let matrix = ThermalMatrix::from_rows([[23.0, 7.0], [22.0, 6.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 303" {
  let matrix = ThermalMatrix::from_rows([[24.0, 10.0], [27.0, 13.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 304" {
  let matrix = ThermalMatrix::from_rows([[25.0, 13.0], [1.0, 20.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 305" {
  let matrix = ThermalMatrix::from_rows([[26.0, 16.0], [6.0, 27.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 306" {
  let matrix = ThermalMatrix::from_rows([[27.0, 19.0], [11.0, 3.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 307" {
  let matrix = ThermalMatrix::from_rows([[28.0, 22.0], [16.0, 10.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 308" {
  let matrix = ThermalMatrix::from_rows([[29.0, 25.0], [21.0, 17.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 309" {
  let matrix = ThermalMatrix::from_rows([[30.0, 28.0], [26.0, 24.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 310" {
  let matrix = ThermalMatrix::from_rows([[0.0, 0.0], [0.0, 0.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 311" {
  let matrix = ThermalMatrix::from_rows([[1.0, 3.0], [5.0, 7.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 312" {
  let matrix = ThermalMatrix::from_rows([[2.0, 6.0], [10.0, 14.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 313" {
  let matrix = ThermalMatrix::from_rows([[3.0, 9.0], [15.0, 21.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 314" {
  let matrix = ThermalMatrix::from_rows([[4.0, 12.0], [20.0, 28.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 315" {
  let matrix = ThermalMatrix::from_rows([[5.0, 15.0], [25.0, 4.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 316" {
  let matrix = ThermalMatrix::from_rows([[6.0, 18.0], [30.0, 11.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 317" {
  let matrix = ThermalMatrix::from_rows([[7.0, 21.0], [4.0, 18.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 318" {
  let matrix = ThermalMatrix::from_rows([[8.0, 24.0], [9.0, 25.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 319" {
  let matrix = ThermalMatrix::from_rows([[9.0, 27.0], [14.0, 1.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 320" {
  let matrix = ThermalMatrix::from_rows([[10.0, 30.0], [19.0, 8.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 321" {
  let matrix = ThermalMatrix::from_rows([[11.0, 2.0], [24.0, 15.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 322" {
  let matrix = ThermalMatrix::from_rows([[12.0, 5.0], [29.0, 22.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 323" {
  let matrix = ThermalMatrix::from_rows([[13.0, 8.0], [3.0, 29.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 324" {
  let matrix = ThermalMatrix::from_rows([[14.0, 11.0], [8.0, 5.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 325" {
  let matrix = ThermalMatrix::from_rows([[15.0, 14.0], [13.0, 12.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 326" {
  let matrix = ThermalMatrix::from_rows([[16.0, 17.0], [18.0, 19.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 327" {
  let matrix = ThermalMatrix::from_rows([[17.0, 20.0], [23.0, 26.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 328" {
  let matrix = ThermalMatrix::from_rows([[18.0, 23.0], [28.0, 2.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 329" {
  let matrix = ThermalMatrix::from_rows([[19.0, 26.0], [2.0, 9.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 330" {
  let matrix = ThermalMatrix::from_rows([[20.0, 29.0], [7.0, 16.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 331" {
  let matrix = ThermalMatrix::from_rows([[21.0, 1.0], [12.0, 23.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 332" {
  let matrix = ThermalMatrix::from_rows([[22.0, 4.0], [17.0, 30.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 333" {
  let matrix = ThermalMatrix::from_rows([[23.0, 7.0], [22.0, 6.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 334" {
  let matrix = ThermalMatrix::from_rows([[24.0, 10.0], [27.0, 13.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 335" {
  let matrix = ThermalMatrix::from_rows([[25.0, 13.0], [1.0, 20.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 336" {
  let matrix = ThermalMatrix::from_rows([[26.0, 16.0], [6.0, 27.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 337" {
  let matrix = ThermalMatrix::from_rows([[27.0, 19.0], [11.0, 3.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 338" {
  let matrix = ThermalMatrix::from_rows([[28.0, 22.0], [16.0, 10.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 339" {
  let matrix = ThermalMatrix::from_rows([[29.0, 25.0], [21.0, 17.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 340" {
  let matrix = ThermalMatrix::from_rows([[30.0, 28.0], [26.0, 24.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 341" {
  let matrix = ThermalMatrix::from_rows([[0.0, 0.0], [0.0, 0.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 342" {
  let matrix = ThermalMatrix::from_rows([[1.0, 3.0], [5.0, 7.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 343" {
  let matrix = ThermalMatrix::from_rows([[2.0, 6.0], [10.0, 14.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 344" {
  let matrix = ThermalMatrix::from_rows([[3.0, 9.0], [15.0, 21.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 345" {
  let matrix = ThermalMatrix::from_rows([[4.0, 12.0], [20.0, 28.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 346" {
  let matrix = ThermalMatrix::from_rows([[5.0, 15.0], [25.0, 4.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 347" {
  let matrix = ThermalMatrix::from_rows([[6.0, 18.0], [30.0, 11.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 348" {
  let matrix = ThermalMatrix::from_rows([[7.0, 21.0], [4.0, 18.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 349" {
  let matrix = ThermalMatrix::from_rows([[8.0, 24.0], [9.0, 25.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 350" {
  let matrix = ThermalMatrix::from_rows([[9.0, 27.0], [14.0, 1.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 351" {
  let matrix = ThermalMatrix::from_rows([[10.0, 30.0], [19.0, 8.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 352" {
  let matrix = ThermalMatrix::from_rows([[11.0, 2.0], [24.0, 15.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 353" {
  let matrix = ThermalMatrix::from_rows([[12.0, 5.0], [29.0, 22.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 354" {
  let matrix = ThermalMatrix::from_rows([[13.0, 8.0], [3.0, 29.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 355" {
  let matrix = ThermalMatrix::from_rows([[14.0, 11.0], [8.0, 5.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 356" {
  let matrix = ThermalMatrix::from_rows([[15.0, 14.0], [13.0, 12.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 357" {
  let matrix = ThermalMatrix::from_rows([[16.0, 17.0], [18.0, 19.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 358" {
  let matrix = ThermalMatrix::from_rows([[17.0, 20.0], [23.0, 26.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 359" {
  let matrix = ThermalMatrix::from_rows([[18.0, 23.0], [28.0, 2.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 360" {
  let matrix = ThermalMatrix::from_rows([[19.0, 26.0], [2.0, 9.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 361" {
  let matrix = ThermalMatrix::from_rows([[20.0, 29.0], [7.0, 16.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 362" {
  let matrix = ThermalMatrix::from_rows([[21.0, 1.0], [12.0, 23.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 363" {
  let matrix = ThermalMatrix::from_rows([[22.0, 4.0], [17.0, 30.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 364" {
  let matrix = ThermalMatrix::from_rows([[23.0, 7.0], [22.0, 6.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 365" {
  let matrix = ThermalMatrix::from_rows([[24.0, 10.0], [27.0, 13.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 366" {
  let matrix = ThermalMatrix::from_rows([[25.0, 13.0], [1.0, 20.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 367" {
  let matrix = ThermalMatrix::from_rows([[26.0, 16.0], [6.0, 27.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 368" {
  let matrix = ThermalMatrix::from_rows([[27.0, 19.0], [11.0, 3.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 369" {
  let matrix = ThermalMatrix::from_rows([[28.0, 22.0], [16.0, 10.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 370" {
  let matrix = ThermalMatrix::from_rows([[29.0, 25.0], [21.0, 17.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 371" {
  let matrix = ThermalMatrix::from_rows([[30.0, 28.0], [26.0, 24.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 372" {
  let matrix = ThermalMatrix::from_rows([[0.0, 0.0], [0.0, 0.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 373" {
  let matrix = ThermalMatrix::from_rows([[1.0, 3.0], [5.0, 7.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 374" {
  let matrix = ThermalMatrix::from_rows([[2.0, 6.0], [10.0, 14.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 375" {
  let matrix = ThermalMatrix::from_rows([[3.0, 9.0], [15.0, 21.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 376" {
  let matrix = ThermalMatrix::from_rows([[4.0, 12.0], [20.0, 28.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 377" {
  let matrix = ThermalMatrix::from_rows([[5.0, 15.0], [25.0, 4.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 378" {
  let matrix = ThermalMatrix::from_rows([[6.0, 18.0], [30.0, 11.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 379" {
  let matrix = ThermalMatrix::from_rows([[7.0, 21.0], [4.0, 18.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 380" {
  let matrix = ThermalMatrix::from_rows([[8.0, 24.0], [9.0, 25.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 381" {
  let matrix = ThermalMatrix::from_rows([[9.0, 27.0], [14.0, 1.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 382" {
  let matrix = ThermalMatrix::from_rows([[10.0, 30.0], [19.0, 8.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 383" {
  let matrix = ThermalMatrix::from_rows([[11.0, 2.0], [24.0, 15.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 384" {
  let matrix = ThermalMatrix::from_rows([[12.0, 5.0], [29.0, 22.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 385" {
  let matrix = ThermalMatrix::from_rows([[13.0, 8.0], [3.0, 29.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 386" {
  let matrix = ThermalMatrix::from_rows([[14.0, 11.0], [8.0, 5.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 387" {
  let matrix = ThermalMatrix::from_rows([[15.0, 14.0], [13.0, 12.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 388" {
  let matrix = ThermalMatrix::from_rows([[16.0, 17.0], [18.0, 19.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 389" {
  let matrix = ThermalMatrix::from_rows([[17.0, 20.0], [23.0, 26.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 390" {
  let matrix = ThermalMatrix::from_rows([[18.0, 23.0], [28.0, 2.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 391" {
  let matrix = ThermalMatrix::from_rows([[19.0, 26.0], [2.0, 9.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 392" {
  let matrix = ThermalMatrix::from_rows([[20.0, 29.0], [7.0, 16.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 393" {
  let matrix = ThermalMatrix::from_rows([[21.0, 1.0], [12.0, 23.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 394" {
  let matrix = ThermalMatrix::from_rows([[22.0, 4.0], [17.0, 30.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 395" {
  let matrix = ThermalMatrix::from_rows([[23.0, 7.0], [22.0, 6.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 396" {
  let matrix = ThermalMatrix::from_rows([[24.0, 10.0], [27.0, 13.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 397" {
  let matrix = ThermalMatrix::from_rows([[25.0, 13.0], [1.0, 20.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 398" {
  let matrix = ThermalMatrix::from_rows([[26.0, 16.0], [6.0, 27.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 399" {
  let matrix = ThermalMatrix::from_rows([[27.0, 19.0], [11.0, 3.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 400" {
  let matrix = ThermalMatrix::from_rows([[28.0, 22.0], [16.0, 10.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 401" {
  let matrix = ThermalMatrix::from_rows([[29.0, 25.0], [21.0, 17.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 402" {
  let matrix = ThermalMatrix::from_rows([[30.0, 28.0], [26.0, 24.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 403" {
  let matrix = ThermalMatrix::from_rows([[0.0, 0.0], [0.0, 0.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 404" {
  let matrix = ThermalMatrix::from_rows([[1.0, 3.0], [5.0, 7.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 405" {
  let matrix = ThermalMatrix::from_rows([[2.0, 6.0], [10.0, 14.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 406" {
  let matrix = ThermalMatrix::from_rows([[3.0, 9.0], [15.0, 21.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 407" {
  let matrix = ThermalMatrix::from_rows([[4.0, 12.0], [20.0, 28.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 408" {
  let matrix = ThermalMatrix::from_rows([[5.0, 15.0], [25.0, 4.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 409" {
  let matrix = ThermalMatrix::from_rows([[6.0, 18.0], [30.0, 11.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 410" {
  let matrix = ThermalMatrix::from_rows([[7.0, 21.0], [4.0, 18.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 411" {
  let matrix = ThermalMatrix::from_rows([[8.0, 24.0], [9.0, 25.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 412" {
  let matrix = ThermalMatrix::from_rows([[9.0, 27.0], [14.0, 1.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 413" {
  let matrix = ThermalMatrix::from_rows([[10.0, 30.0], [19.0, 8.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 414" {
  let matrix = ThermalMatrix::from_rows([[11.0, 2.0], [24.0, 15.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 415" {
  let matrix = ThermalMatrix::from_rows([[12.0, 5.0], [29.0, 22.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 416" {
  let matrix = ThermalMatrix::from_rows([[13.0, 8.0], [3.0, 29.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 417" {
  let matrix = ThermalMatrix::from_rows([[14.0, 11.0], [8.0, 5.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 418" {
  let matrix = ThermalMatrix::from_rows([[15.0, 14.0], [13.0, 12.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 419" {
  let matrix = ThermalMatrix::from_rows([[16.0, 17.0], [18.0, 19.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 420" {
  let matrix = ThermalMatrix::from_rows([[17.0, 20.0], [23.0, 26.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 421" {
  let matrix = ThermalMatrix::from_rows([[18.0, 23.0], [28.0, 2.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 422" {
  let matrix = ThermalMatrix::from_rows([[19.0, 26.0], [2.0, 9.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 423" {
  let matrix = ThermalMatrix::from_rows([[20.0, 29.0], [7.0, 16.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 424" {
  let matrix = ThermalMatrix::from_rows([[21.0, 1.0], [12.0, 23.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 425" {
  let matrix = ThermalMatrix::from_rows([[22.0, 4.0], [17.0, 30.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 426" {
  let matrix = ThermalMatrix::from_rows([[23.0, 7.0], [22.0, 6.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 427" {
  let matrix = ThermalMatrix::from_rows([[24.0, 10.0], [27.0, 13.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 428" {
  let matrix = ThermalMatrix::from_rows([[25.0, 13.0], [1.0, 20.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 429" {
  let matrix = ThermalMatrix::from_rows([[26.0, 16.0], [6.0, 27.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 430" {
  let matrix = ThermalMatrix::from_rows([[27.0, 19.0], [11.0, 3.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 431" {
  let matrix = ThermalMatrix::from_rows([[28.0, 22.0], [16.0, 10.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 432" {
  let matrix = ThermalMatrix::from_rows([[29.0, 25.0], [21.0, 17.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 433" {
  let matrix = ThermalMatrix::from_rows([[30.0, 28.0], [26.0, 24.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 434" {
  let matrix = ThermalMatrix::from_rows([[0.0, 0.0], [0.0, 0.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 435" {
  let matrix = ThermalMatrix::from_rows([[1.0, 3.0], [5.0, 7.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 436" {
  let matrix = ThermalMatrix::from_rows([[2.0, 6.0], [10.0, 14.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 437" {
  let matrix = ThermalMatrix::from_rows([[3.0, 9.0], [15.0, 21.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 438" {
  let matrix = ThermalMatrix::from_rows([[4.0, 12.0], [20.0, 28.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 439" {
  let matrix = ThermalMatrix::from_rows([[5.0, 15.0], [25.0, 4.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 440" {
  let matrix = ThermalMatrix::from_rows([[6.0, 18.0], [30.0, 11.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 441" {
  let matrix = ThermalMatrix::from_rows([[7.0, 21.0], [4.0, 18.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 442" {
  let matrix = ThermalMatrix::from_rows([[8.0, 24.0], [9.0, 25.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 443" {
  let matrix = ThermalMatrix::from_rows([[9.0, 27.0], [14.0, 1.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 444" {
  let matrix = ThermalMatrix::from_rows([[10.0, 30.0], [19.0, 8.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 445" {
  let matrix = ThermalMatrix::from_rows([[11.0, 2.0], [24.0, 15.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 446" {
  let matrix = ThermalMatrix::from_rows([[12.0, 5.0], [29.0, 22.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 447" {
  let matrix = ThermalMatrix::from_rows([[13.0, 8.0], [3.0, 29.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 448" {
  let matrix = ThermalMatrix::from_rows([[14.0, 11.0], [8.0, 5.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 449" {
  let matrix = ThermalMatrix::from_rows([[15.0, 14.0], [13.0, 12.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 450" {
  let matrix = ThermalMatrix::from_rows([[16.0, 17.0], [18.0, 19.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 451" {
  let matrix = ThermalMatrix::from_rows([[17.0, 20.0], [23.0, 26.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 452" {
  let matrix = ThermalMatrix::from_rows([[18.0, 23.0], [28.0, 2.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 453" {
  let matrix = ThermalMatrix::from_rows([[19.0, 26.0], [2.0, 9.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 454" {
  let matrix = ThermalMatrix::from_rows([[20.0, 29.0], [7.0, 16.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 455" {
  let matrix = ThermalMatrix::from_rows([[21.0, 1.0], [12.0, 23.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 456" {
  let matrix = ThermalMatrix::from_rows([[22.0, 4.0], [17.0, 30.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 457" {
  let matrix = ThermalMatrix::from_rows([[23.0, 7.0], [22.0, 6.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 458" {
  let matrix = ThermalMatrix::from_rows([[24.0, 10.0], [27.0, 13.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 459" {
  let matrix = ThermalMatrix::from_rows([[25.0, 13.0], [1.0, 20.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 460" {
  let matrix = ThermalMatrix::from_rows([[26.0, 16.0], [6.0, 27.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 461" {
  let matrix = ThermalMatrix::from_rows([[27.0, 19.0], [11.0, 3.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 462" {
  let matrix = ThermalMatrix::from_rows([[28.0, 22.0], [16.0, 10.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 463" {
  let matrix = ThermalMatrix::from_rows([[29.0, 25.0], [21.0, 17.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 464" {
  let matrix = ThermalMatrix::from_rows([[30.0, 28.0], [26.0, 24.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 465" {
  let matrix = ThermalMatrix::from_rows([[0.0, 0.0], [0.0, 0.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 466" {
  let matrix = ThermalMatrix::from_rows([[1.0, 3.0], [5.0, 7.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 467" {
  let matrix = ThermalMatrix::from_rows([[2.0, 6.0], [10.0, 14.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 468" {
  let matrix = ThermalMatrix::from_rows([[3.0, 9.0], [15.0, 21.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 469" {
  let matrix = ThermalMatrix::from_rows([[4.0, 12.0], [20.0, 28.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 470" {
  let matrix = ThermalMatrix::from_rows([[5.0, 15.0], [25.0, 4.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 471" {
  let matrix = ThermalMatrix::from_rows([[6.0, 18.0], [30.0, 11.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 472" {
  let matrix = ThermalMatrix::from_rows([[7.0, 21.0], [4.0, 18.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 473" {
  let matrix = ThermalMatrix::from_rows([[8.0, 24.0], [9.0, 25.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 474" {
  let matrix = ThermalMatrix::from_rows([[9.0, 27.0], [14.0, 1.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 475" {
  let matrix = ThermalMatrix::from_rows([[10.0, 30.0], [19.0, 8.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 476" {
  let matrix = ThermalMatrix::from_rows([[11.0, 2.0], [24.0, 15.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 477" {
  let matrix = ThermalMatrix::from_rows([[12.0, 5.0], [29.0, 22.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 478" {
  let matrix = ThermalMatrix::from_rows([[13.0, 8.0], [3.0, 29.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 479" {
  let matrix = ThermalMatrix::from_rows([[14.0, 11.0], [8.0, 5.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 480" {
  let matrix = ThermalMatrix::from_rows([[15.0, 14.0], [13.0, 12.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 481" {
  let matrix = ThermalMatrix::from_rows([[16.0, 17.0], [18.0, 19.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 482" {
  let matrix = ThermalMatrix::from_rows([[17.0, 20.0], [23.0, 26.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 483" {
  let matrix = ThermalMatrix::from_rows([[18.0, 23.0], [28.0, 2.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 484" {
  let matrix = ThermalMatrix::from_rows([[19.0, 26.0], [2.0, 9.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 485" {
  let matrix = ThermalMatrix::from_rows([[20.0, 29.0], [7.0, 16.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 486" {
  let matrix = ThermalMatrix::from_rows([[21.0, 1.0], [12.0, 23.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 487" {
  let matrix = ThermalMatrix::from_rows([[22.0, 4.0], [17.0, 30.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 488" {
  let matrix = ThermalMatrix::from_rows([[23.0, 7.0], [22.0, 6.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 489" {
  let matrix = ThermalMatrix::from_rows([[24.0, 10.0], [27.0, 13.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 490" {
  let matrix = ThermalMatrix::from_rows([[25.0, 13.0], [1.0, 20.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 491" {
  let matrix = ThermalMatrix::from_rows([[26.0, 16.0], [6.0, 27.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 492" {
  let matrix = ThermalMatrix::from_rows([[27.0, 19.0], [11.0, 3.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 493" {
  let matrix = ThermalMatrix::from_rows([[28.0, 22.0], [16.0, 10.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 494" {
  let matrix = ThermalMatrix::from_rows([[29.0, 25.0], [21.0, 17.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 495" {
  let matrix = ThermalMatrix::from_rows([[30.0, 28.0], [26.0, 24.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 496" {
  let matrix = ThermalMatrix::from_rows([[0.0, 0.0], [0.0, 0.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 497" {
  let matrix = ThermalMatrix::from_rows([[1.0, 3.0], [5.0, 7.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 498" {
  let matrix = ThermalMatrix::from_rows([[2.0, 6.0], [10.0, 14.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 499" {
  let matrix = ThermalMatrix::from_rows([[3.0, 9.0], [15.0, 21.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 500" {
  let matrix = ThermalMatrix::from_rows([[4.0, 12.0], [20.0, 28.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 501" {
  let matrix = ThermalMatrix::from_rows([[5.0, 15.0], [25.0, 4.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 502" {
  let matrix = ThermalMatrix::from_rows([[6.0, 18.0], [30.0, 11.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 503" {
  let matrix = ThermalMatrix::from_rows([[7.0, 21.0], [4.0, 18.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 504" {
  let matrix = ThermalMatrix::from_rows([[8.0, 24.0], [9.0, 25.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 505" {
  let matrix = ThermalMatrix::from_rows([[9.0, 27.0], [14.0, 1.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 506" {
  let matrix = ThermalMatrix::from_rows([[10.0, 30.0], [19.0, 8.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 507" {
  let matrix = ThermalMatrix::from_rows([[11.0, 2.0], [24.0, 15.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 508" {
  let matrix = ThermalMatrix::from_rows([[12.0, 5.0], [29.0, 22.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 509" {
  let matrix = ThermalMatrix::from_rows([[13.0, 8.0], [3.0, 29.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 510" {
  let matrix = ThermalMatrix::from_rows([[14.0, 11.0], [8.0, 5.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 511" {
  let matrix = ThermalMatrix::from_rows([[15.0, 14.0], [13.0, 12.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 512" {
  let matrix = ThermalMatrix::from_rows([[16.0, 17.0], [18.0, 19.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 513" {
  let matrix = ThermalMatrix::from_rows([[17.0, 20.0], [23.0, 26.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 514" {
  let matrix = ThermalMatrix::from_rows([[18.0, 23.0], [28.0, 2.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 515" {
  let matrix = ThermalMatrix::from_rows([[19.0, 26.0], [2.0, 9.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 516" {
  let matrix = ThermalMatrix::from_rows([[20.0, 29.0], [7.0, 16.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 517" {
  let matrix = ThermalMatrix::from_rows([[21.0, 1.0], [12.0, 23.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 518" {
  let matrix = ThermalMatrix::from_rows([[22.0, 4.0], [17.0, 30.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 519" {
  let matrix = ThermalMatrix::from_rows([[23.0, 7.0], [22.0, 6.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 520" {
  let matrix = ThermalMatrix::from_rows([[24.0, 10.0], [27.0, 13.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 521" {
  let matrix = ThermalMatrix::from_rows([[25.0, 13.0], [1.0, 20.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 522" {
  let matrix = ThermalMatrix::from_rows([[26.0, 16.0], [6.0, 27.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 523" {
  let matrix = ThermalMatrix::from_rows([[27.0, 19.0], [11.0, 3.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 524" {
  let matrix = ThermalMatrix::from_rows([[28.0, 22.0], [16.0, 10.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 525" {
  let matrix = ThermalMatrix::from_rows([[29.0, 25.0], [21.0, 17.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 526" {
  let matrix = ThermalMatrix::from_rows([[30.0, 28.0], [26.0, 24.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 527" {
  let matrix = ThermalMatrix::from_rows([[0.0, 0.0], [0.0, 0.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 528" {
  let matrix = ThermalMatrix::from_rows([[1.0, 3.0], [5.0, 7.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 529" {
  let matrix = ThermalMatrix::from_rows([[2.0, 6.0], [10.0, 14.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 530" {
  let matrix = ThermalMatrix::from_rows([[3.0, 9.0], [15.0, 21.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 531" {
  let matrix = ThermalMatrix::from_rows([[4.0, 12.0], [20.0, 28.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 532" {
  let matrix = ThermalMatrix::from_rows([[5.0, 15.0], [25.0, 4.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 533" {
  let matrix = ThermalMatrix::from_rows([[6.0, 18.0], [30.0, 11.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 534" {
  let matrix = ThermalMatrix::from_rows([[7.0, 21.0], [4.0, 18.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 535" {
  let matrix = ThermalMatrix::from_rows([[8.0, 24.0], [9.0, 25.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 536" {
  let matrix = ThermalMatrix::from_rows([[9.0, 27.0], [14.0, 1.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 537" {
  let matrix = ThermalMatrix::from_rows([[10.0, 30.0], [19.0, 8.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 538" {
  let matrix = ThermalMatrix::from_rows([[11.0, 2.0], [24.0, 15.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 539" {
  let matrix = ThermalMatrix::from_rows([[12.0, 5.0], [29.0, 22.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 540" {
  let matrix = ThermalMatrix::from_rows([[13.0, 8.0], [3.0, 29.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 541" {
  let matrix = ThermalMatrix::from_rows([[14.0, 11.0], [8.0, 5.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 542" {
  let matrix = ThermalMatrix::from_rows([[15.0, 14.0], [13.0, 12.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 543" {
  let matrix = ThermalMatrix::from_rows([[16.0, 17.0], [18.0, 19.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 544" {
  let matrix = ThermalMatrix::from_rows([[17.0, 20.0], [23.0, 26.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 545" {
  let matrix = ThermalMatrix::from_rows([[18.0, 23.0], [28.0, 2.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 546" {
  let matrix = ThermalMatrix::from_rows([[19.0, 26.0], [2.0, 9.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 547" {
  let matrix = ThermalMatrix::from_rows([[20.0, 29.0], [7.0, 16.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 548" {
  let matrix = ThermalMatrix::from_rows([[21.0, 1.0], [12.0, 23.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 549" {
  let matrix = ThermalMatrix::from_rows([[22.0, 4.0], [17.0, 30.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 550" {
  let matrix = ThermalMatrix::from_rows([[23.0, 7.0], [22.0, 6.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 551" {
  let matrix = ThermalMatrix::from_rows([[24.0, 10.0], [27.0, 13.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 552" {
  let matrix = ThermalMatrix::from_rows([[25.0, 13.0], [1.0, 20.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 553" {
  let matrix = ThermalMatrix::from_rows([[26.0, 16.0], [6.0, 27.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 554" {
  let matrix = ThermalMatrix::from_rows([[27.0, 19.0], [11.0, 3.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 555" {
  let matrix = ThermalMatrix::from_rows([[28.0, 22.0], [16.0, 10.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 556" {
  let matrix = ThermalMatrix::from_rows([[29.0, 25.0], [21.0, 17.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 557" {
  let matrix = ThermalMatrix::from_rows([[30.0, 28.0], [26.0, 24.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 558" {
  let matrix = ThermalMatrix::from_rows([[0.0, 0.0], [0.0, 0.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 559" {
  let matrix = ThermalMatrix::from_rows([[1.0, 3.0], [5.0, 7.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 560" {
  let matrix = ThermalMatrix::from_rows([[2.0, 6.0], [10.0, 14.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 561" {
  let matrix = ThermalMatrix::from_rows([[3.0, 9.0], [15.0, 21.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 562" {
  let matrix = ThermalMatrix::from_rows([[4.0, 12.0], [20.0, 28.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 563" {
  let matrix = ThermalMatrix::from_rows([[5.0, 15.0], [25.0, 4.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 564" {
  let matrix = ThermalMatrix::from_rows([[6.0, 18.0], [30.0, 11.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 565" {
  let matrix = ThermalMatrix::from_rows([[7.0, 21.0], [4.0, 18.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 566" {
  let matrix = ThermalMatrix::from_rows([[8.0, 24.0], [9.0, 25.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 567" {
  let matrix = ThermalMatrix::from_rows([[9.0, 27.0], [14.0, 1.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 568" {
  let matrix = ThermalMatrix::from_rows([[10.0, 30.0], [19.0, 8.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 569" {
  let matrix = ThermalMatrix::from_rows([[11.0, 2.0], [24.0, 15.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 570" {
  let matrix = ThermalMatrix::from_rows([[12.0, 5.0], [29.0, 22.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 571" {
  let matrix = ThermalMatrix::from_rows([[13.0, 8.0], [3.0, 29.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 572" {
  let matrix = ThermalMatrix::from_rows([[14.0, 11.0], [8.0, 5.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 573" {
  let matrix = ThermalMatrix::from_rows([[15.0, 14.0], [13.0, 12.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 574" {
  let matrix = ThermalMatrix::from_rows([[16.0, 17.0], [18.0, 19.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 575" {
  let matrix = ThermalMatrix::from_rows([[17.0, 20.0], [23.0, 26.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 576" {
  let matrix = ThermalMatrix::from_rows([[18.0, 23.0], [28.0, 2.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 577" {
  let matrix = ThermalMatrix::from_rows([[19.0, 26.0], [2.0, 9.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 578" {
  let matrix = ThermalMatrix::from_rows([[20.0, 29.0], [7.0, 16.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 579" {
  let matrix = ThermalMatrix::from_rows([[21.0, 1.0], [12.0, 23.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 580" {
  let matrix = ThermalMatrix::from_rows([[22.0, 4.0], [17.0, 30.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 581" {
  let matrix = ThermalMatrix::from_rows([[23.0, 7.0], [22.0, 6.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 582" {
  let matrix = ThermalMatrix::from_rows([[24.0, 10.0], [27.0, 13.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 583" {
  let matrix = ThermalMatrix::from_rows([[25.0, 13.0], [1.0, 20.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 584" {
  let matrix = ThermalMatrix::from_rows([[26.0, 16.0], [6.0, 27.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 585" {
  let matrix = ThermalMatrix::from_rows([[27.0, 19.0], [11.0, 3.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 586" {
  let matrix = ThermalMatrix::from_rows([[28.0, 22.0], [16.0, 10.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 587" {
  let matrix = ThermalMatrix::from_rows([[29.0, 25.0], [21.0, 17.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 588" {
  let matrix = ThermalMatrix::from_rows([[30.0, 28.0], [26.0, 24.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 589" {
  let matrix = ThermalMatrix::from_rows([[0.0, 0.0], [0.0, 0.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 590" {
  let matrix = ThermalMatrix::from_rows([[1.0, 3.0], [5.0, 7.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 591" {
  let matrix = ThermalMatrix::from_rows([[2.0, 6.0], [10.0, 14.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 592" {
  let matrix = ThermalMatrix::from_rows([[3.0, 9.0], [15.0, 21.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 593" {
  let matrix = ThermalMatrix::from_rows([[4.0, 12.0], [20.0, 28.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 594" {
  let matrix = ThermalMatrix::from_rows([[5.0, 15.0], [25.0, 4.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 595" {
  let matrix = ThermalMatrix::from_rows([[6.0, 18.0], [30.0, 11.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 596" {
  let matrix = ThermalMatrix::from_rows([[7.0, 21.0], [4.0, 18.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 597" {
  let matrix = ThermalMatrix::from_rows([[8.0, 24.0], [9.0, 25.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 598" {
  let matrix = ThermalMatrix::from_rows([[9.0, 27.0], [14.0, 1.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 599" {
  let matrix = ThermalMatrix::from_rows([[10.0, 30.0], [19.0, 8.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 600" {
  let matrix = ThermalMatrix::from_rows([[11.0, 2.0], [24.0, 15.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 601" {
  let matrix = ThermalMatrix::from_rows([[12.0, 5.0], [29.0, 22.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 602" {
  let matrix = ThermalMatrix::from_rows([[13.0, 8.0], [3.0, 29.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 603" {
  let matrix = ThermalMatrix::from_rows([[14.0, 11.0], [8.0, 5.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 604" {
  let matrix = ThermalMatrix::from_rows([[15.0, 14.0], [13.0, 12.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 605" {
  let matrix = ThermalMatrix::from_rows([[16.0, 17.0], [18.0, 19.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 606" {
  let matrix = ThermalMatrix::from_rows([[17.0, 20.0], [23.0, 26.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 607" {
  let matrix = ThermalMatrix::from_rows([[18.0, 23.0], [28.0, 2.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 608" {
  let matrix = ThermalMatrix::from_rows([[19.0, 26.0], [2.0, 9.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 609" {
  let matrix = ThermalMatrix::from_rows([[20.0, 29.0], [7.0, 16.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 610" {
  let matrix = ThermalMatrix::from_rows([[21.0, 1.0], [12.0, 23.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 611" {
  let matrix = ThermalMatrix::from_rows([[22.0, 4.0], [17.0, 30.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 612" {
  let matrix = ThermalMatrix::from_rows([[23.0, 7.0], [22.0, 6.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 613" {
  let matrix = ThermalMatrix::from_rows([[24.0, 10.0], [27.0, 13.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 614" {
  let matrix = ThermalMatrix::from_rows([[25.0, 13.0], [1.0, 20.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 615" {
  let matrix = ThermalMatrix::from_rows([[26.0, 16.0], [6.0, 27.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 616" {
  let matrix = ThermalMatrix::from_rows([[27.0, 19.0], [11.0, 3.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 617" {
  let matrix = ThermalMatrix::from_rows([[28.0, 22.0], [16.0, 10.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 618" {
  let matrix = ThermalMatrix::from_rows([[29.0, 25.0], [21.0, 17.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 619" {
  let matrix = ThermalMatrix::from_rows([[30.0, 28.0], [26.0, 24.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 620" {
  let matrix = ThermalMatrix::from_rows([[0.0, 0.0], [0.0, 0.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 621" {
  let matrix = ThermalMatrix::from_rows([[1.0, 3.0], [5.0, 7.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 622" {
  let matrix = ThermalMatrix::from_rows([[2.0, 6.0], [10.0, 14.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 623" {
  let matrix = ThermalMatrix::from_rows([[3.0, 9.0], [15.0, 21.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 624" {
  let matrix = ThermalMatrix::from_rows([[4.0, 12.0], [20.0, 28.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 625" {
  let matrix = ThermalMatrix::from_rows([[5.0, 15.0], [25.0, 4.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 626" {
  let matrix = ThermalMatrix::from_rows([[6.0, 18.0], [30.0, 11.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 627" {
  let matrix = ThermalMatrix::from_rows([[7.0, 21.0], [4.0, 18.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 628" {
  let matrix = ThermalMatrix::from_rows([[8.0, 24.0], [9.0, 25.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 629" {
  let matrix = ThermalMatrix::from_rows([[9.0, 27.0], [14.0, 1.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 630" {
  let matrix = ThermalMatrix::from_rows([[10.0, 30.0], [19.0, 8.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 631" {
  let matrix = ThermalMatrix::from_rows([[11.0, 2.0], [24.0, 15.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 632" {
  let matrix = ThermalMatrix::from_rows([[12.0, 5.0], [29.0, 22.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 633" {
  let matrix = ThermalMatrix::from_rows([[13.0, 8.0], [3.0, 29.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 634" {
  let matrix = ThermalMatrix::from_rows([[14.0, 11.0], [8.0, 5.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 635" {
  let matrix = ThermalMatrix::from_rows([[15.0, 14.0], [13.0, 12.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 636" {
  let matrix = ThermalMatrix::from_rows([[16.0, 17.0], [18.0, 19.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 637" {
  let matrix = ThermalMatrix::from_rows([[17.0, 20.0], [23.0, 26.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 638" {
  let matrix = ThermalMatrix::from_rows([[18.0, 23.0], [28.0, 2.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 639" {
  let matrix = ThermalMatrix::from_rows([[19.0, 26.0], [2.0, 9.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 640" {
  let matrix = ThermalMatrix::from_rows([[20.0, 29.0], [7.0, 16.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 641" {
  let matrix = ThermalMatrix::from_rows([[21.0, 1.0], [12.0, 23.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 642" {
  let matrix = ThermalMatrix::from_rows([[22.0, 4.0], [17.0, 30.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 643" {
  let matrix = ThermalMatrix::from_rows([[23.0, 7.0], [22.0, 6.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 644" {
  let matrix = ThermalMatrix::from_rows([[24.0, 10.0], [27.0, 13.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 645" {
  let matrix = ThermalMatrix::from_rows([[25.0, 13.0], [1.0, 20.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 646" {
  let matrix = ThermalMatrix::from_rows([[26.0, 16.0], [6.0, 27.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 647" {
  let matrix = ThermalMatrix::from_rows([[27.0, 19.0], [11.0, 3.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 648" {
  let matrix = ThermalMatrix::from_rows([[28.0, 22.0], [16.0, 10.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 649" {
  let matrix = ThermalMatrix::from_rows([[29.0, 25.0], [21.0, 17.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 650" {
  let matrix = ThermalMatrix::from_rows([[30.0, 28.0], [26.0, 24.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 651" {
  let matrix = ThermalMatrix::from_rows([[0.0, 0.0], [0.0, 0.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 652" {
  let matrix = ThermalMatrix::from_rows([[1.0, 3.0], [5.0, 7.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 653" {
  let matrix = ThermalMatrix::from_rows([[2.0, 6.0], [10.0, 14.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 654" {
  let matrix = ThermalMatrix::from_rows([[3.0, 9.0], [15.0, 21.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 655" {
  let matrix = ThermalMatrix::from_rows([[4.0, 12.0], [20.0, 28.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 656" {
  let matrix = ThermalMatrix::from_rows([[5.0, 15.0], [25.0, 4.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 657" {
  let matrix = ThermalMatrix::from_rows([[6.0, 18.0], [30.0, 11.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 658" {
  let matrix = ThermalMatrix::from_rows([[7.0, 21.0], [4.0, 18.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 659" {
  let matrix = ThermalMatrix::from_rows([[8.0, 24.0], [9.0, 25.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 660" {
  let matrix = ThermalMatrix::from_rows([[9.0, 27.0], [14.0, 1.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 661" {
  let matrix = ThermalMatrix::from_rows([[10.0, 30.0], [19.0, 8.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 662" {
  let matrix = ThermalMatrix::from_rows([[11.0, 2.0], [24.0, 15.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 663" {
  let matrix = ThermalMatrix::from_rows([[12.0, 5.0], [29.0, 22.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 664" {
  let matrix = ThermalMatrix::from_rows([[13.0, 8.0], [3.0, 29.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 665" {
  let matrix = ThermalMatrix::from_rows([[14.0, 11.0], [8.0, 5.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 666" {
  let matrix = ThermalMatrix::from_rows([[15.0, 14.0], [13.0, 12.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 667" {
  let matrix = ThermalMatrix::from_rows([[16.0, 17.0], [18.0, 19.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 668" {
  let matrix = ThermalMatrix::from_rows([[17.0, 20.0], [23.0, 26.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 669" {
  let matrix = ThermalMatrix::from_rows([[18.0, 23.0], [28.0, 2.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 670" {
  let matrix = ThermalMatrix::from_rows([[19.0, 26.0], [2.0, 9.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 671" {
  let matrix = ThermalMatrix::from_rows([[20.0, 29.0], [7.0, 16.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 672" {
  let matrix = ThermalMatrix::from_rows([[21.0, 1.0], [12.0, 23.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 673" {
  let matrix = ThermalMatrix::from_rows([[22.0, 4.0], [17.0, 30.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 674" {
  let matrix = ThermalMatrix::from_rows([[23.0, 7.0], [22.0, 6.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 675" {
  let matrix = ThermalMatrix::from_rows([[24.0, 10.0], [27.0, 13.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 676" {
  let matrix = ThermalMatrix::from_rows([[25.0, 13.0], [1.0, 20.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 677" {
  let matrix = ThermalMatrix::from_rows([[26.0, 16.0], [6.0, 27.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 678" {
  let matrix = ThermalMatrix::from_rows([[27.0, 19.0], [11.0, 3.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 679" {
  let matrix = ThermalMatrix::from_rows([[28.0, 22.0], [16.0, 10.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 680" {
  let matrix = ThermalMatrix::from_rows([[29.0, 25.0], [21.0, 17.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 681" {
  let matrix = ThermalMatrix::from_rows([[30.0, 28.0], [26.0, 24.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 682" {
  let matrix = ThermalMatrix::from_rows([[0.0, 0.0], [0.0, 0.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 683" {
  let matrix = ThermalMatrix::from_rows([[1.0, 3.0], [5.0, 7.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 684" {
  let matrix = ThermalMatrix::from_rows([[2.0, 6.0], [10.0, 14.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 685" {
  let matrix = ThermalMatrix::from_rows([[3.0, 9.0], [15.0, 21.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 686" {
  let matrix = ThermalMatrix::from_rows([[4.0, 12.0], [20.0, 28.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 687" {
  let matrix = ThermalMatrix::from_rows([[5.0, 15.0], [25.0, 4.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 688" {
  let matrix = ThermalMatrix::from_rows([[6.0, 18.0], [30.0, 11.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 689" {
  let matrix = ThermalMatrix::from_rows([[7.0, 21.0], [4.0, 18.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 690" {
  let matrix = ThermalMatrix::from_rows([[8.0, 24.0], [9.0, 25.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 691" {
  let matrix = ThermalMatrix::from_rows([[9.0, 27.0], [14.0, 1.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 692" {
  let matrix = ThermalMatrix::from_rows([[10.0, 30.0], [19.0, 8.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 693" {
  let matrix = ThermalMatrix::from_rows([[11.0, 2.0], [24.0, 15.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 694" {
  let matrix = ThermalMatrix::from_rows([[12.0, 5.0], [29.0, 22.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 695" {
  let matrix = ThermalMatrix::from_rows([[13.0, 8.0], [3.0, 29.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 696" {
  let matrix = ThermalMatrix::from_rows([[14.0, 11.0], [8.0, 5.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 697" {
  let matrix = ThermalMatrix::from_rows([[15.0, 14.0], [13.0, 12.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 698" {
  let matrix = ThermalMatrix::from_rows([[16.0, 17.0], [18.0, 19.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}

///|
test "matrix boundary scenario 699" {
  let matrix = ThermalMatrix::from_rows([[17.0, 20.0], [23.0, 26.0]])
  let stats = matrix.stats()
  assert_eq(stats.count, 4)
  assert_true(stats.min <= stats.max)
  assert_true(matrix.histogram(bins=4).length() == 4)
  assert_true(matrix.gradient().values.length() == 4)
  assert_true(matrix.mean_filter(radius=1).values.length() == 4)
  assert_true(matrix.laplacian().values.length() == 4)
  assert_true(matrix.rescale(width=1, height=1).values.length() == 1)
  assert_true(matrix.to_csv_with(CsvOptions::default()).contains(","))
  assert_true(
    matrix
    .valid_mask(TemperatureLimits::new(minimum=-100.0, maximum=100.0))
    .count() ==
    4,
  )
}
