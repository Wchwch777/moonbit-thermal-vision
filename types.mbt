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
