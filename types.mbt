///|
pub(all) struct ThermalPoint {
  x : Int
  y : Int
} derive(Debug, Eq, ToJson)

///|
pub(all) struct TemperatureRange {
  min : Double
  max : Double
} derive(Debug, Eq, ToJson)

///|
pub(all) struct ThermalMatrix {
  width : Int
  height : Int
  values : Array[Double]
} derive(Debug, Eq, ToJson)

///|
pub(all) struct Rgb {
  r : Int
  g : Int
  b : Int
} derive(Debug, Eq, ToJson)

///|
pub(all) enum Palette {
  Gray
  Ironbow
  BlueRed
} derive(Debug, Eq, ToJson)

///|
pub(all) struct ColorFrame {
  width : Int
  height : Int
  pixels : Array[Rgb]
} derive(Debug, Eq, ToJson)

///|
pub(all) struct ThermalRegion {
  id : Int
  pixels : Array[ThermalPoint]
  min_x : Int
  min_y : Int
  max_x : Int
  max_y : Int
  min_temp : Double
  max_temp : Double
  average_temp : Double
  peak : ThermalPoint
} derive(Debug, Eq, ToJson)

///|
pub(all) suberror ThermalError {
  InvalidDimensions(width~ : Int, height~ : Int, values~ : Int)
  EmptyMatrix
  OutOfBounds(x~ : Int, y~ : Int, width~ : Int, height~ : Int)
  RaggedRows(expected~ : Int, actual~ : Int, row~ : Int)
  ParseNumber(token~ : String, row~ : Int, col~ : Int)
} derive(Debug, Eq, ToJson)

///|
pub fn ThermalPoint::new(x~ : Int, y~ : Int) -> ThermalPoint {
  { x, y }
}

///|
pub fn TemperatureRange::span(range : TemperatureRange) -> Double {
  range.max - range.min
}

///|
pub fn TemperatureRange::contains(range : TemperatureRange, value : Double) -> Bool {
  value >= range.min && value <= range.max
}

///|
pub fn Rgb::new(r~ : Int, g~ : Int, b~ : Int) -> Rgb {
  { r: r.clamp(min=0, max=255), g: g.clamp(min=0, max=255), b: b.clamp(min=0, max=255) }
}
