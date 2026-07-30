# moonbit-thermal-vision

Thermal infrared matrix analysis toolkit for MoonBit.

The package focuses on the data layer behind thermal cameras: temperature
matrix parsing, pseudocolor mapping, threshold region extraction, hotspot
detection, thermal statistics, and text report export. It is intended for
industrial inspection, electrical equipment monitoring, security review, and
low-light scene analysis where the raw input is already calibrated into a
temperature matrix.

## Current Scope

- Build validated `ThermalMatrix` values from rows or text.
- Parse comma, semicolon, whitespace, and tab separated temperature matrices.
- Map temperatures to grayscale, ironbow, or blue-red RGB frames.
- Export pseudocolor frames as simple ASCII PPM data.
- Build threshold masks and apply small morphology operations.
- Extract connected regions above a temperature threshold.
- Detect local hotspots with radius, contrast, and result limit controls.
- Summarize min, max, mean, standard deviation, P50, P90, and P95.
- Generate a Markdown inspection report.

The project deliberately does not pretend to read every proprietary thermal
camera format. Device-specific adapters can be added later as separate packages
once the binary format and calibration metadata are known.

## Quick Example

```mbt check
///|
test "thermal inspection workflow" {
  let matrix = parse_temperature_matrix(
    (
      #|31.2, 33.5, 35.1, 32.0
      #|30.9, 42.4, 48.8, 36.2
      #|29.8, 38.6, 45.3, 34.4
      #|
    ),
  )

  let report = matrix.inspect_threshold(threshold=40.0)
  inspect(report.hotspots.length(), content="1")
  inspect(report.regions.length(), content="1")

  let frame = matrix.colorize(palette=Ironbow)
  inspect(frame.width, content="4")
  assert_true(frame.to_ppm_ascii().contains("P3"))
}
```

Run the bundled demo:

```bash
moon run cmd/main
```

Run the checks used by this repository:

```bash
moon fmt --check
moon check --deny-warn
moon info --deny-warn
moon test --deny-warn
```

## API Map

- `ThermalMatrix::new`, `ThermalMatrix::from_rows`: validated construction.
- `parse_temperature_matrix`: text parser for calibrated temperature grids.
- `ThermalMatrix::range`, `ThermalMatrix::stats`: frame-level summaries.
- `ThermalMatrix::colorize`: pseudocolor conversion to `ColorFrame`.
- `ThermalMatrix::threshold_mask`: boolean masks for threshold workflows.
- `ThermalMask::open`, `ThermalMask::close`: basic mask cleanup.
- `ThermalMatrix::threshold_regions`: connected threshold components.
- `ThermalMatrix::detect_hotspots`: local peak detection.
- `ThermalMatrix::inspect_threshold`: one-call inspection report.
- `InspectionReport::to_markdown`: human-readable report output.

## Project Notes

This is an original MoonBit implementation. Before selecting the topic, I
checked the Mooncakes ecosystem for thermal / infrared / vision keywords and did
not find a mature MoonBit package with highly overlapping thermal infrared
matrix analysis functionality.

The implementation uses only MoonBit standard library features. No external
runtime, generated code, copied third-party algorithm implementation, or virtual
contributor identity is included.

## Roadmap

- Add binary adapter packages for common thermal camera export formats.
- Add morphology helpers for cleaning noisy threshold masks.
- Add connected-component extraction directly from cleaned masks.
- Add color legend rendering and image file helpers.
- Add tracking over frame sequences for inspection videos.
- Add calibration metadata types for emissivity and reflected temperature.

## License

Apache-2.0. See `LICENSE`.
