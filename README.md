# Queueing Systems and Workload Forecasting

Six NTUA Electrical and Computer Engineering laboratory studies by **Michail Athanasios Peppas**. The Octave work implements analytical queueing models, event-driven simulation, and time-series forecasting. It includes finite-capacity birth–death queues, transient and convergence analysis, Erlang C sizing, a two-phase FIFO server, and an open Jackson network.

## Technical contribution and evidence

The [lab index](labs/README.md) connects each model to its implementation, report, and recorded outputs. In Lab 3, the simulator tracks rejected arrivals, sojourn times, and state occupancy as the run length and warm-up cutoff change. Lab 5 compares simulated queue statistics with Little’s law and derives traffic and delay metrics for a five-node Jackson network. Its maintained simulation supports explicit seeds, with a regression test for RNG behavior.

Lab 6 implements five regression models and five seasonal-difference filters for hourly GPU requests, producing prediction intervals and recording MAE, RMSE, coverage, and median CRPS. The [archived comparison](labs/6th/programs/output/lab6_model_comparison_results.csv) reports median CRPS of **209.13** for the selected regression and **296.04** for the selected filter. The same 47 observations were used for model selection and scoring. See [forecasting limitations](#forecasting-limitations) before interpreting the results.

| Lab | Study | Reproduction notes |
|---|---|---|
| [1](labs/1st/README.md) | Probability, moments, and Poisson processes | Parts 2–3 run with Octave statistics. Part 1 reconstructs locally from the authorized course starter and the retained project delta. |
| [2](labs/2nd/README.md) | M/M/1 metrics and finite birth–death chains | Requires the Octave queueing package. |
| [3](labs/3rd/README.md) | M/M/1/10 simulation and transient removal | Uses base Octave. The largest stored configuration is ten million transitions. |
| [4](labs/4th/README.md) | Telephone capacity and Erlang C | Requires the Octave queueing package. |
| [5](labs/5th/README.md) | Two-phase FIFO simulation and a Jackson network | The simulation supports seeded execution and includes fallback approximations when the statistics package is unavailable. |
| [6](labs/6th/README.md) | Regression and seasonal forecasting | Requires the Octave statistics package and the exact prepared trace for historical replay. |

## Reproduction

Work from the project root. To obtain a checkout from GitHub, use the following commands.

```bash
git clone https://github.com/ntua-el21026/ntua-queueing-systems-public.git
cd ntua-queueing-systems-public
```

Use GNU Octave from each lab’s `programs/` directory. The implementation uses Octave-specific syntax and no lockfile records the exact original runtime. Run new experiments in a separate working copy to preserve archived outputs. The [course materials index](docs/COURSE_MATERIALS.md) identifies externally available lectures, assignment statements, starter files, and the prepared trace. The [Lab 1 instructions](labs/1st/README.md#run) describe the hash-checked source reconstruction. For Lab 6, use `LAB6_DATASET_MAT` as described in the [input and run instructions](labs/6th/README.md#run).

## Output paths and evidence

| Lab | What the entry point writes |
|---|---|
| 1–3 | Console results and interactive figures. The historical captures under `programs/output/` are separate artifacts. |
| 4 | Console metrics. |
| 5 | Part 1 produces console results and figures. Part 2 also writes `lab5_part2_delay.png` to its current directory when export succeeds. |
| 6 | A comparison CSV and two filename sets for the same eight plots in the current directory. |

The [reproducibility guide](docs/REPRODUCIBILITY.md) documents the report inputs, including the separately sourced emblem. Rendered reports are retained for inspection.

## Seeds and validation

Lab 3 resets the legacy uniform RNG to seed `1` for each configured run. The maintained Lab 5 entry point accepts an integer seed in `[0, 4294954950]`; its normal stream uses the seed plus 12,345. Without an explicit seed it uses a clock-derived seed. The submitted source and recorded outputs preserve their historical behavior. Exact replay depends on a compatible Octave runtime and the recorded seed.

The lightweight regression checks uniform and normal replay, stream separation, input bounds, rejection cases, and clock mode without running the simulation:

```bash
octave --quiet --eval "addpath('tests'); test_lab5_seed"
```

The Lab 1 Part 1 reconstruction matched the submitted source. The Lab 6 comparison CSV and historical diagnostics were preserved, and the six synthetic illustrations were verified against their embedded copies in the report. GNU Octave was unavailable for a fresh run of the Lab 5 regression or the numerical experiments.

## Forecasting limitations

The original run trained on the first 1,200 observations, then selected and scored candidates on the remaining 47. The reported results are exploratory model-selection evidence. They do not estimate performance on an independent final holdout. Interval coverage depends on the fitted models and residual assumptions.

Six illustrations use a synthetic workload to demonstrate the forecasting methods. The report text, recorded scores, and two diagnostic figures document the coursework run. Exact numerical replay requires the prepared trace through authorized course access. [Lab 6 figures and trace provenance](docs/LAB6_PLOT_REVIEW.md)

## Authorship and license

The MIT grant applies to original project material. Course-authored material remains attributable to NTUA NETMODE and the course instructors. The original report authorship, submitted filenames, and third-party credits are preserved. [Course material scope and access](docs/COURSE_MATERIALS.md)
