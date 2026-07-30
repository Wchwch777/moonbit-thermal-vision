///|
fn percentile(sorted : Array[Double], p : Double) -> Double {
  if sorted.is_empty() {
    0.0
  } else {
    let last = sorted.length() - 1
    let idx = (last.to_double() * p).round().to_int().clamp(min=0, max=last)
    sorted[idx]
  }
}

///|
pub fn ThermalMatrix::stats(matrix : ThermalMatrix) -> ThermalStats raise ThermalError {
  if matrix.values.is_empty() {
    raise ThermalError::EmptyMatrix
  }
  let range = matrix.range()
  let count = matrix.values.length()
  let sum = matrix.values.fold(init=0.0, fn(acc, value) { acc + value })
  let mean = sum / count.to_double()
  let variance_sum = matrix.values.fold(init=0.0, fn(acc, value) {
    let d = value - mean
    acc + d * d
  })
  let sorted = matrix.values.copy()
  sorted.sort()
  {
    count,
    min: range.min,
    max: range.max,
    mean,
    stddev: (variance_sum / count.to_double()).sqrt(),
    p50: percentile(sorted, 0.50),
    p90: percentile(sorted, 0.90),
    p95: percentile(sorted, 0.95),
  }
}

///|
pub fn ThermalMatrix::inspect_threshold(
  matrix : ThermalMatrix,
  threshold~ : Double,
  hotspot_limit? : Int = 8
) -> InspectionReport raise ThermalError {
  {
    frame_width: matrix.width,
    frame_height: matrix.height,
    threshold,
    stats: matrix.stats(),
    hotspots: matrix.detect_hotspots(min_temp=threshold, limit=hotspot_limit),
    regions: matrix.threshold_regions(min_temp=threshold),
  }
}

///|
pub fn InspectionReport::to_markdown(report : InspectionReport) -> String {
  let lines : Array[String] = [
    "# Thermal Inspection Report",
    "",
    "- Frame: \{report.frame_width} x \{report.frame_height}",
    "- Threshold: \{report.threshold} C",
    "- Temperature range: \{report.stats.min} .. \{report.stats.max} C",
    "- Mean: \{report.stats.mean} C",
    "- Stddev: \{report.stats.stddev} C",
    "- P90 / P95: \{report.stats.p90} / \{report.stats.p95} C",
    "",
    "## Hotspots",
  ]
  if report.hotspots.is_empty() {
    lines.push("No hotspot above threshold.")
  } else {
    for spot in report.hotspots {
      lines.push("- (\{spot.point.x}, \{spot.point.y}) \{spot.temperature} C, contrast \{spot.contrast} C")
    }
  }
  lines.push("")
  lines.push("## Regions")
  if report.regions.is_empty() {
    lines.push("No threshold region.")
  } else {
    for region in report.regions {
      lines.push(
        "- #\{region.id}: area \{region.area()}, bbox (\{region.min_x},\{region.min_y})-(\{region.max_x},\{region.max_y}), peak \{region.max_temp} C at (\{region.peak.x},\{region.peak.y})",
      )
    }
  }
  lines.join("\n")
}
