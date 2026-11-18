# Lab 1 — Probability Distributions and Poisson Processes

## Goal

This assignment introduces the probability distributions used throughout queueing theory. It studies the Poisson distribution, the binomial-to-Poisson approximation, exponential service/interarrival times, the memoryless property, and the Poisson counting process.

## Implementation

The Octave programs are split into three parts:

- Part 1 (locally reconstructed as `programs/lab1_part1.m`): plots Poisson PMFs for several rates, compares binomial distributions with the limiting Poisson distribution, computes mean and variance values, and studies Poisson splitting/superposition for external and internal calls.
- `programs/lab1_part2.m`: plots exponential PDFs and CDFs, computes the distribution of the minimum of independent exponential variables, and verifies the memoryless property numerically.
- `programs/lab1_part3.m`: simulates a Poisson counting process from exponential interarrival times, estimates the event rate for increasing sample sizes, and discusses event counts in non-overlapping time windows.

The scripts use the Octave `statistics` package.

## Inputs and Outputs

- The [assignment reference](assignment/README.md) identifies the lab statement, tutorial, and course starter.
- Generated figures and terminal captures are preserved in `programs/output/`.
- Exported code PDFs are preserved in `programs/pdf/`.

## Organization

- `assignment/`: reference to the official statement, tutorial and starter.
- `programs/`: implemented scripts.
- `programs/output/`: saved plots and terminal output for the three parts.
- `programs/pdf/`: exported PDFs of the code.
- `report/`: LaTeX source and rendered report.
- `submission/`: the submitted report and independently distributable code. Part 1 source is reconstructed from the verified delta.

## Run

Obtain the exact `lab1_help_code.m` through the authorized [course portal](https://courses.ntua.gr/enrol/index.php?id=908). In a separate working copy, run this from the repository root to apply the student changes to the local base. The script verifies both hashes before writing.

```bash
python3 tools/restore_course_variant.py /path/to/lab1_help_code.m tools/lab1_part1.m.delta.json labs/1st/programs/lab1_part1.m
```

Run Parts 2 and 3 without the course starter. For each command below, work from this lab folder and load the `statistics` package explicitly.

```bash
cd programs
octave --eval "pkg load statistics; lab1_part1"
octave --eval "pkg load statistics; lab1_part2"
octave --eval "pkg load statistics; lab1_part3"
```
