///|
fn main raise {
  let sample = @thermal.ThermalMatrix::from_rows([
    [20.0, 21.0, 22.0, 23.0, 24.0, 25.0, 26.0, 27.0],
    [21.0, 22.0, 45.0, 48.0, 25.0, 26.0, 27.0, 28.0],
    [22.0, 23.0, 46.0, 49.0, 26.0, 27.0, 28.0, 29.0],
    [23.0, 24.0, 25.0, 26.0, 27.0, 28.0, 29.0, 30.0],
    [24.0, 25.0, 26.0, 27.0, 28.0, 29.0, 30.0, 31.0],
    [25.0, 26.0, 27.0, 28.0, 29.0, 30.0, 31.0, 32.0],
    [26.0, 27.0, 28.0, 29.0, 30.0, 31.0, 32.0, 33.0],
    [27.0, 28.0, 29.0, 30.0, 31.0, 32.0, 33.0, 34.0],
  ])
  let mut checksum = 0.0
  for _ in 0..<100 {
    let filtered = sample.mean_filter(radius=1)
    let report = filtered.inspect_threshold(threshold=40.0)
    checksum = checksum +
      report.stats.mean +
      report.regions.length().to_double()
  }
  println("workload=8x8 frames=100")
  println("operations=mean_filter+threshold_regions+stats")
  println("checksum=" + checksum.to_string())
}
