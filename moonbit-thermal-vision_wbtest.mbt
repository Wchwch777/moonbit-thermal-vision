test "matrix construction and range" {
  let matrix = ThermalMatrix::from_rows([
    [12.0, 14.0, 13.5],
    [11.0, 18.0, 15.0],
  ])
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
