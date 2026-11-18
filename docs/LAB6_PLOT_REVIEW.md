# Lab 6 figures and trace provenance

Michail Athanasios Peppas authored the coursework report, its original figures, and the forecasting implementation. The report text and tables describe the original run on the prepared hourly GPU request trace. The [historical comparison CSV](../labs/6th/programs/output/lab6_model_comparison_results.csv), archived console output, and two model diagnostics remain available.

## Synthetic illustrations

The course materials describe an open source for the original trace. They do not identify the exact upstream release, preprocessing, or applicable terms for displaying the prepared series. Six examples generated from an independent synthetic workload illustrate the same forecasting questions in the [rendered report](../labs/6th/report/lab6_03121026.pdf) and as standalone images. Each is labeled synthetic. The accompanying historical prose and numerical results still refer to the original coursework run.

The simulated series combines a linear drift, daily and weekly cycles, and seeded Gaussian perturbations in arbitrary units. It uses 1,200 fitting hours and 47 forecast hours to illustrate the coursework split. The regression fits a linear trend with 24-hour and 168-hour harmonics. A second model projects the previous week forward with an adjustment derived from training-period 168-hour differences. Approximate Gaussian prediction bands illustrate uncertainty. These independent examples do not form part of the recorded model selection or evaluation.

| Image | PDF page and caption | Illustration |
|---|---|---|
| [`lab6_1.png`](../labs/6th/programs/output/lab6_1.png) | Page 5, Figure 1 | Full synthetic series and chronological split |
| [`lab6_2.png`](../labs/6th/programs/output/lab6_2.png) | Page 11, Figure 2 | Fitting observations and harmonic regression |
| [`lab6_3.png`](../labs/6th/programs/output/lab6_3.png) | Page 12, Figure 3 | Regression predictions, simulated holdout, and prediction band |
| [`lab6_5.png`](../labs/6th/programs/output/lab6_5.png) | Page 15, Figure 5 | Seasonal-difference predictions, simulated holdout, and prediction band |
| [`lab6_8.png`](../labs/6th/programs/output/lab6_8.png) | Page 16, Figure 6 | Both point forecasts and their prediction bands |
| [`lab6_6.png`](../labs/6th/programs/output/lab6_6.png) | Page 17, Figure 7 | Both point forecasts and the simulated holdout |

## Historical diagnostics and replay

The historical [centered lag-168 residuals](../labs/6th/programs/output/lab6_4.png) remain on page 14 as Figure 4. The [absolute forecast errors](../labs/6th/programs/output/lab6_7.png) remain on page 17 as Figure 8. They report model diagnostics from the coursework run. The MAT input is external. See the [Lab 6 input and run instructions](../labs/6th/README.md#inputs-and-outputs) for authorized access, input verification, and the requirements for historical replay.
