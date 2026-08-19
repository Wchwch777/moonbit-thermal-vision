///|
pub(all) struct Calibration {
  emissivity : Double
  reflected_temperature : Double
  ambient_temperature : Double
  gain : Double
  offset : Double
} derive(Debug, Eq, ToJson)

///|
pub fn Calibration::new(
  emissivity~ : Double,
  reflected_temperature~ : Double,
  ambient_temperature~ : Double,
  gain? : Double = 1.0,
  offset? : Double = 0.0,
) -> Calibration {
  { emissivity, reflected_temperature, ambient_temperature, gain, offset }
}

///|
pub fn Calibration::identity() -> Calibration {
  Calibration::new(
    emissivity=1.0,
    reflected_temperature=20.0,
    ambient_temperature=20.0,
  )
}

///|
pub fn Calibration::apply(calibration : Calibration, raw : Double) -> Double {
  raw * calibration.gain + calibration.offset
}

///|
pub fn Calibration::corrected_emission(
  calibration : Calibration,
  apparent : Double,
) -> Double {
  let e = calibration.emissivity.clamp(min=0.01, max=1.0)
  let reflected = calibration.reflected_temperature
  let ambient = calibration.ambient_temperature
  let radiance = (apparent + 273.15) * e + (reflected + 273.15) * (1.0 - e)
  radiance - 273.15 + (ambient - reflected) * (1.0 - e) * 0.01
}

///|
pub fn ThermalMatrix::calibrate(
  matrix : ThermalMatrix,
  calibration : Calibration,
) -> ThermalMatrix {
  matrix.map(fn(value) { calibration.apply(value) })
}

///|
pub fn ThermalMatrix::correct_emissivity(
  matrix : ThermalMatrix,
  calibration : Calibration,
) -> ThermalMatrix {
  matrix.map(fn(value) { calibration.corrected_emission(value) })
}

///|
pub(all) struct CalibrationReport {
  before : ThermalStats
  after : ThermalStats
  calibration : Calibration
} derive(Debug, Eq, ToJson)

///|
pub fn ThermalMatrix::calibration_report(
  matrix : ThermalMatrix,
  calibration : Calibration,
) -> CalibrationReport raise ThermalError {
  let corrected = matrix.correct_emissivity(calibration)
  { before: matrix.stats(), after: corrected.stats(), calibration }
}
