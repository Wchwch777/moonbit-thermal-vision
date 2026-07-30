///|
fn main {
  let sample =
    #|31.2, 33.5, 35.1, 32.0
    #|30.9, 42.4, 48.8, 36.2
    #|29.8, 38.6, 45.3, 34.4
    #|
  let matrix = try! @thermal.parse_temperature_matrix(sample)
  let report = try! matrix.inspect_threshold(threshold=40.0)
  let color = try! matrix.colorize(palette=@thermal.Ironbow)
  println("moonbit-thermal-vision demo")
  println(report.to_markdown())
  println("")
  println("PPM preview header:")
  let ppm = color.to_ppm_ascii().split("\n")
  for i, line in ppm {
    if i < 6 {
      println(line)
    }
  }
}
