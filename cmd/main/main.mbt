fn main {
  let matrix = try! @thermal.ThermalMatrix::from_rows([
    [31.2, 33.5, 35.1, 32.0],
    [30.9, 42.4, 48.8, 36.2],
    [29.8, 38.6, 45.3, 34.4],
  ])
  let range = try! matrix.range()
  println("moonbit-thermal-vision demo")
  println("frame: \{matrix.width}x\{matrix.height}")
  println("range: \{range.min} .. \{range.max} C")
}
