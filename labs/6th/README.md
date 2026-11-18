# Lab 6 — Time-Series Workload Forecasting

## Goal

This assignment studies time-series forecasting for GPU resource-request data. The first 1200 hourly observations are used as training data, and the remaining observations are forecast with 95% prediction intervals. The implementation compares linear-regression forecasting models against filter-based seasonal-difference models.

## Implementation

The main implementation is `programs/lab6.m`. It:

- Loads the authorized MAT input via `LAB6_DATASET_MAT` or local `dataset.mat` and validates the `values` vector.
- Uses the first 1200 samples as training data and forecasts the remaining 47 samples in the recorded run.
- Evaluates five linear-regression models with trend and seasonal terms for 12-hour, 24-hour, and 168-hour periods.
- Evaluates five filter models based on seasonal differencing with lags 1, 24, and 168.
- Selects the best model in each family using median CRPS.
- Reports MAE, RMSE, prediction-interval coverage, and median CRPS.
- Writes model-comparison metrics to `lab6_model_comparison_results.csv`.
- Generates forecast, residual, error, and interval-comparison figures.

In the recorded coursework run, the selected regression model is `LR3: linear trend + daily 24 + weekly 168`, and the selected filter model is `F3: Delta_168`. The regression model has the lower median CRPS in the final comparison.

The script uses the Octave `statistics` package for normal-distribution functions.

## Inputs and outputs

- Obtain the prepared MAT v5 file through authorized course access. Its recorded SHA-256 is `1d1e5c0ae1f45e0b6b97668590cd8d42df2c4b5e032ee50eb1633c5f8fdce56b`. The report ran on 1,247 observations and the starter comments mention 1,248.
- `programs/output/`: six labeled synthetic illustrations, two historical diagnostics, and the untouched terminal output, CSV metrics, and output PDF from the coursework run.
- `programs/pdf/`: exported PDFs of the code and output.

## Organization

- `assignment/`: course-material access reference.
- `programs/lab6.m`: forecasting and model-selection implementation.
- `programs/output/`: figures, historical comparison CSV, and output logs.
- `programs/pdf/`: exported PDFs of the code and output.
- `report/`: submitted LaTeX source and rendered report with six synthetic illustrations in the original figure positions.
- `submission/`: final submitted code file.

## Run

Run from a separate working copy of `programs/` with the prepared file outside the checkout. The unconfigured entry point still accepts a local `dataset.mat`.

```bash
cd programs
LAB6_DATASET_MAT=/path/to/authorized/dataset.mat octave --eval "pkg load statistics; lab6"
```

The script writes regenerated PNG and CSV artifacts to the current directory, including eight descriptive names and eight `lab6_<n>.png` copies. Use a separate run copy/output location and keep the archived evidence intact. The forecast segment is also used for model selection; see the [root limitations](../../README.md#forecasting-limitations).

## Validation

The 47 observations used for reported scores were also used for selection. The archived CSV therefore records exploratory model comparisons. The comparison CSV and two diagnostic figures match the archived coursework artifacts. Six synthetic illustrations show the training and forecast setup without using the original trace. Verification matched them to the report images and confirmed that the report text, tables, and other pages were preserved. Octave was unavailable for a new historical replay. [Figure and trace provenance](../../docs/LAB6_PLOT_REVIEW.md)
