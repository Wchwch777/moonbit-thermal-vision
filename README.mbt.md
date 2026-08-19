# moonbit-thermal-vision

A pure MoonBit toolkit for analyzing calibrated thermal-infrared temperature
matrices. It is designed for industrial inspection, equipment monitoring,
low-light sensing, and educational pipelines where a camera or upstream
adapter provides a numeric temperature grid.

## Core capabilities

- Validated matrices with safe indexing, rows, crops, rescaling, mapping, and CSV.
- Mixed-delimiter text parsing for comma, semicolon, space, and tab data.
- Thermal statistics, percentiles, histograms, z-score anomalies, and gradients.
- Gray, ironbow, and blue-red palettes with ASCII PPM export.
- Threshold masks, morphology, connected regions, bounding boxes, and PBM export.
- Local hotspot detection, frame deltas, row/column trends, and quality reports.
- Emissivity/gain/offset calibration, mean/median filters, kernels, convolution,
  Laplacian and sharpening helpers.

The root package owns the domain model and algorithms. `cmd/main` is a small
demonstration; `cmd/benchmark` is a reproducible workload entry point.

## Quick start

```bash
moon run cmd/main
```

Library usage:

```mbt nocheck
let matrix = @thermal.parse_temperature_matrix(
  #|31.2, 33.5, 35.1
  #|30.9, 48.8, 36.2
  #|29.8, 45.3, 34.4
)
let report = matrix.inspect_threshold(threshold=40.0)
let frame = matrix.colorize(palette=@thermal.Ironbow)
println(report.to_markdown())
println(frame.to_ppm_ascii())
```

## CLI and benchmark

The demo prints a Markdown inspection report and a PPM preview header:

```bash
moon run cmd/main
moon run --target native cmd/benchmark
```

The benchmark performs 100 real 8x8 frames through mean filtering, threshold
region extraction, and statistics. On the development machine (MoonBit
`0.1.20260807`, Windows, native target), the measured workload completed in
approximately 121–126 ms for the complete native command across five local
runs (including process startup); the program prints a checksum so a run cannot
silently skip the work. Re-run the command on your own target when comparing
machines.

## Architecture

```text
root package
├── matrix / types       validated data model and safe access
├── parse / export        text and portable PPM/PBM/CSV representations
├── palette               pseudocolor conversion
├── mask / regions        binary morphology and connected components
├── hotspots / analytics  local peaks, histograms, anomalies
├── calibration / quality input correction and quality classification
├── filters / spatial     smoothing, kernels, gradients, convolution
└── temporal              frame deltas and trend analysis
```

Algorithms operate on ordinary MoonBit arrays and standard-library types.
No vendor SDK, generated runtime, or device-specific binary format is required.
Private camera adapters can be layered above this package without changing its
core data model.

## Testing and CI

The repository contains unit tests, documentation examples, and a broad
boundary regression matrix. Run the same checks locally as CI:

```bash
moon fmt --check
moon check --deny-warn
moon info
moon test --deny-warn
moon build --target native
```

GitHub Actions tests Ubuntu, macOS, and Windows with the latest stable MoonBit
installer, checks generated interfaces, runs all tests, and builds the native
target. A separate workflow runs the benchmark smoke test on pushes to
`main`.

## License

Apache-2.0. See [LICENSE](LICENSE).
