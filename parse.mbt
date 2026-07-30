///|
fn normalize_matrix_line(line : String) -> String {
  line
  .replace_all(old=",", new=" ")
  .replace_all(old="\t", new=" ")
  .replace_all(old=";", new=" ")
}

///|
fn parse_temperature_token(
  token : String,
  row~ : Int,
  col~ : Int
) -> Double raise ThermalError {
  let mut sign = 1.0
  let mut value = 0.0
  let mut scale = 1.0
  let mut after_dot = false
  let mut saw_digit = false
  for i, ch in token {
    match ch {
      '-' if i == 0 => sign = -1.0
      '+' if i == 0 => sign = 1.0
      '.' if !after_dot => after_dot = true
      '0'..='9' => {
        saw_digit = true
        let digit = digit_value(ch).to_double()
        if after_dot {
          scale = scale * 10.0
          value = value + digit / scale
        } else {
          value = value * 10.0 + digit
        }
      }
      _ => raise ThermalError::ParseNumber(token~, row~, col~)
    }
  }
  if !saw_digit {
    raise ThermalError::ParseNumber(token~, row~, col~)
  }
  sign * value
}

///|
fn digit_value(ch : Char) -> Int {
  match ch {
    '0' => 0
    '1' => 1
    '2' => 2
    '3' => 3
    '4' => 4
    '5' => 5
    '6' => 6
    '7' => 7
    '8' => 8
    _ => 9
  }
}

///|
pub fn parse_temperature_matrix(text : String) -> ThermalMatrix raise ThermalError {
  let rows : Array[Array[Double]] = []
  for raw_row_index, raw_line in text.split("\n") {
    let line = normalize_matrix_line(raw_line.to_owned()).trim().to_owned()
    if !line.is_empty() {
      let row : Array[Double] = []
      for token_index, raw_token in line.split(" ") {
        let token = raw_token.trim().to_owned()
        if !token.is_empty() {
          row.push(parse_temperature_token(token, row=raw_row_index, col=token_index))
        }
      }
      if !row.is_empty() {
        rows.push(row)
      }
    }
  }
  ThermalMatrix::from_rows(rows)
}

///|
pub fn ThermalMatrix::to_csv(matrix : ThermalMatrix) -> String {
  let lines : Array[String] = []
  for y in 0..<matrix.height {
    let cells : Array[String] = []
    for x in 0..<matrix.width {
      cells.push(matrix.unsafe_get(x~, y~).to_string())
    }
    lines.push(cells.join(","))
  }
  lines.join("\n")
}
