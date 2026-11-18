# Lab 4 — Telephone Center and Erlang C

## Goal

This assignment studies the sizing of telephone-center resources. The first part models an IP PBX with 200 employees, 50 outgoing trunks, Poisson call arrivals, exponential call durations, and an infinite waiting queue. The second part computes Erlang C service metrics for a multi-agent call center.

## Implementation

The main implementation is `programs/lab4.m`. It:

- Computes offered load from call arrival rate and mean holding time.
- Checks the Erlang C stability condition.
- Computes `P0`, probability of waiting, service level at a selected waiting threshold, average speed of answer, and occupancy.
- Cross-checks the waiting probability from the Octave `erlangc` function against the closed-form expression.

The script uses the Octave `queueing` package.

## Inputs and Outputs

- See the [assignment reference](assignment/README.md) for the named course sources.
- Generated terminal output is committed in `programs/output/`.
- Exported code and output PDFs are preserved in `programs/pdf/`.

## Organization

- `assignment/`: official course-material access reference.
- `programs/lab4.m`: Erlang C calculation script.
- `programs/output/`: terminal output and exported output PDF.
- `programs/pdf/`: exported PDFs of the code and output.
- `report/`: LaTeX source and rendered report.
- `submission/`: final submitted report and code file.

## Run

Load the `queueing` package before running the script if your Octave installation does not load it automatically.

```bash
cd programs
octave lab4.m
```
