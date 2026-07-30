///|
fn normalize_temperature(value : Double, range : TemperatureRange) -> Double {
  let span = range.span()
  if span <= 0.0 {
    0.0
  } else {
    ((value - range.min) / span).clamp(min=0.0, max=1.0)
  }
}

///|
fn lerp_channel(a : Int, b : Int, t : Double) -> Int {
  (a.to_double() + (b - a).to_double() * t)
  .round()
  .to_int()
  .clamp(min=0, max=255)
}

///|
fn lerp_rgb(a : Rgb, b : Rgb, t : Double) -> Rgb {
  Rgb::new(
    r=lerp_channel(a.r, b.r, t),
    g=lerp_channel(a.g, b.g, t),
    b=lerp_channel(a.b, b.b, t),
  )
}

///|
fn palette_color(t : Double, palette : Palette) -> Rgb {
  match palette {
    Gray => {
      let channel = (t * 255.0).round().to_int()
      Rgb::new(r=channel, g=channel, b=channel)
    }
    BlueRed =>
      lerp_rgb(Rgb::new(r=20, g=60, b=180), Rgb::new(r=230, g=42, b=28), t)
    Ironbow =>
      if t < 0.33 {
        lerp_rgb(
          Rgb::new(r=0, g=0, b=0),
          Rgb::new(r=120, g=32, b=120),
          t / 0.33,
        )
      } else if t < 0.66 {
        lerp_rgb(
          Rgb::new(r=120, g=32, b=120),
          Rgb::new(r=240, g=96, b=24),
          (t - 0.33) / 0.33,
        )
      } else {
        lerp_rgb(
          Rgb::new(r=240, g=96, b=24),
          Rgb::new(r=255, g=244, b=170),
          (t - 0.66) / 0.34,
        )
      }
  }
}

///|
pub fn ThermalMatrix::colorize(
  matrix : ThermalMatrix,
  palette? : Palette = Ironbow,
  range? : TemperatureRange,
) -> ColorFrame raise ThermalError {
  let chosen_range = match range {
    Some(r) => r
    None => matrix.range()
  }
  let pixels = matrix.values.map(fn(value) {
    palette_color(normalize_temperature(value, chosen_range), palette)
  })
  { width: matrix.width, height: matrix.height, pixels }
}

///|
pub fn ColorFrame::pixel(
  frame : ColorFrame,
  point : ThermalPoint,
) -> Rgb raise ThermalError {
  if point.x < 0 ||
    point.x >= frame.width ||
    point.y < 0 ||
    point.y >= frame.height {
    raise ThermalError::OutOfBounds(
      x=point.x,
      y=point.y,
      width=frame.width,
      height=frame.height,
    )
  }
  frame.pixels[point.y * frame.width + point.x]
}

///|
pub fn ColorFrame::to_ppm_ascii(frame : ColorFrame) -> String {
  let lines : Array[String] = ["P3", "\{frame.width} \{frame.height}", "255"]
  for pixel in frame.pixels {
    lines.push("\{pixel.r} \{pixel.g} \{pixel.b}")
  }
  lines.join("\n")
}
