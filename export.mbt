///|
pub(all) struct CsvOptions {
  delimiter : String
  decimals : Int
  include_header : Bool
} derive(Debug, Eq, ToJson)

///|
pub fn CsvOptions::default() -> CsvOptions {
  { delimiter: ",", decimals: 3, include_header: false }
}

///|
fn format_number(value : Double, decimals : Int) -> String {
  let mut scale = 1.0
  for _ in 0..<Int::max(0, decimals) {
    scale = scale * 10.0
  }
  ((value * scale).round() / scale).to_string()
}

///|
pub fn ThermalMatrix::to_csv_with(
  matrix : ThermalMatrix,
  options : CsvOptions,
) -> String {
  let lines : Array[String] = []
  if options.include_header {
    let headers : Array[String] = []
    for x in 0..<matrix.width {
      headers.push(x.to_string())
    }
    lines.push(headers.join(options.delimiter))
  }
  for y in 0..<matrix.height {
    let row : Array[String] = []
    for x in 0..<matrix.width {
      row.push(format_number(matrix.unsafe_get(x~, y~), options.decimals))
    }
    lines.push(row.join(options.delimiter))
  }
  lines.join("\n")
}

///|
pub fn ThermalMask::to_pbm_ascii(mask : ThermalMask) -> String {
  let lines : Array[String] = [
    "P1",
    mask.width.to_string() + " " + mask.height.to_string(),
  ]
  for y in 0..<mask.height {
    let row : Array[String] = []
    for x in 0..<mask.width {
      row.push(if mask.cells[y * mask.width + x] { "1" } else { "0" })
    }
    lines.push(row.join(" "))
  }
  lines.join("\n")
}

///|
pub fn ColorFrame::to_ppm_ascii_wrapped(
  frame : ColorFrame,
  columns~ : Int,
) -> String {
  let safe_columns = Int::max(1, columns)
  let lines : Array[String] = [
    "P3",
    frame.width.to_string() + " " + frame.height.to_string(),
    "255",
  ]
  let mut current = StringBuilder::new()
  let mut count = 0
  for pixel in frame.pixels {
    let text = pixel.r.to_string() +
      " " +
      pixel.g.to_string() +
      " " +
      pixel.b.to_string()
    if count >= safe_columns {
      lines.push(current.to_string())
      current = StringBuilder::new()
      count = 0
    }
    if count > 0 {
      current.write_string(" ")
    }
    current.write_string(text)
    count += 1
  }
  if count > 0 {
    lines.push(current.to_string())
  }
  lines.join("\n")
}

///|
pub fn ThermalRegion::summary(region : ThermalRegion) -> String {
  "region #" +
  region.id.to_string() +
  ": area=" +
  region.area().to_string() +
  ", bbox=" +
  region.min_x.to_string() +
  "," +
  region.min_y.to_string() +
  "-" +
  region.max_x.to_string() +
  "," +
  region.max_y.to_string() +
  ", range=" +
  region.min_temp.to_string() +
  ".." +
  region.max_temp.to_string()
}

///|
pub fn QualitySummary::to_markdown(summary : QualitySummary) -> String {
  let lines = [
    "## Input quality",
    "",
    "| Metric | Count |",
    "| --- | ---: |",
    "| Total samples | " + summary.total.to_string() + " |",
    "| Valid | " + summary.valid.to_string() + " |",
    "| Missing | " + summary.missing.to_string() + " |",
    "| Non-finite | " + summary.non_finite.to_string() + " |",
    "| Below physical limit | " + summary.below_limit.to_string() + " |",
    "| Above physical limit | " + summary.above_limit.to_string() + " |",
  ]
  lines.join("\n")
}
