# Labs

This folder contains the implementations, figures, reports, and submission evidence for the six NTUA Queueing Systems laboratory studies. Course-provided files are described in their access references.

## Laboratory studies

| Folder | Topic | Main entry points |
| --- | --- | --- |
| [1st](1st/README.md) | Probability distributions and Poisson processes | [Part 1 reconstruction](1st/README.md#run), [`lab1_part2.m`](1st/programs/lab1_part2.m), [`lab1_part3.m`](1st/programs/lab1_part3.m) |
| [2nd](2nd/README.md) | M/M/1 and finite birth-death queues | [`lab2_part2.m`](2nd/programs/lab2_part2.m), [`lab2_part3a.m`](2nd/programs/lab2_part3a.m), [`lab2_part3b.m`](2nd/programs/lab2_part3b.m) |
| [3rd](3rd/README.md) | M/M/1/10 queue simulation | [`lab3.m`](3rd/programs/lab3.m) |
| [4th](4th/README.md) | Telephone-center sizing and Erlang C | [`lab4.m`](4th/programs/lab4.m) |
| [5th](5th/README.md) | Web-server discrete-event simulation and Jackson networks | [`lab5_part1.m`](5th/programs/lab5_part1.m), [`lab5_part2.m`](5th/programs/lab5_part2.m) |
| [6th](6th/README.md) | Time-series workload forecasting | [`lab6.m`](6th/programs/lab6.m) |

## Directory layout

The following paths are relative to each individual lab folder.

- `assignment/`: links and access notes for assignment PDFs, teaching material, starter code and external inputs.
- `programs/`: working Octave implementations.
- `programs/output/`: generated figures, terminal output, CSV files, and output PDFs.
- `programs/pdf/`: exported PDFs of code and selected output.
- `report/`: LaTeX report source and rendered report PDF.
- `submission/`: final submitted code and report material.

## Running an independent example

Run each script from its own lab’s program folder. From this index directory, one example is:

```bash
cd 1st/programs
octave --eval "pkg load statistics; lab1_part2"
```

The lab-level READMEs document each entry point and its packages. [Lab 1 Part 1](1st/README.md#run) needs an authorized source input; [Lab 6](6th/README.md#run) needs the prepared workload MAT file.

Stored output directories preserve historical captures; most scripts do not automatically write into those directories. See the [root output table](../README.md#output-paths-and-evidence) and [reproducibility notes](../docs/REPRODUCIBILITY.md) before running or rebuilding reports.
