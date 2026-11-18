# Reproducing a new run

Run new experiments in a separate working directory and retain the archived output as a fixed observation. Record the source and data SHA-256, Octave and package versions, graphics backend, parameters, random seed and transient policy, and output hashes.

## Runtime inputs

- Lab 1 Part 1 requires the exact `lab1_help_code.m` from the official course portal. Assemble the local program with the retained delta and verified hashes. Parts 2 and 3 use the Octave statistics package. [Lab 1 assembly and run instructions](../labs/1st/README.md#run)
- The authored simulations and calculations in Labs 2–5 use the parameters and dependencies named in the [lab index](../labs/README.md). Retain helper functions beside their entry points in each copied program folder.
- Lab 6 requires the authorized prepared MAT vector via `LAB6_DATASET_MAT` or a local `dataset.mat`. Compare the file hash and use a separate output directory. [Lab 6 input and hash](../labs/6th/README.md#inputs-and-outputs)

The [output table](../README.md#output-paths-and-evidence) identifies which entry points write tables or figures and which exhibit historical captures.

## Report builds

Each historical `main.tex` uses XeLaTeX, `fontspec`, `unicode-math`, Greek text and the CMU Serif font. The sources refer to assets by basename. Copy the report and corresponding plots and appendix PDFs from the matching lab into a disposable build directory. Each lab’s source also refers to `EMP Logo.png`, a separately sourced cover emblem that is not included. Obtain that asset through the institution if an exact source build is required.

Lab 1’s historical source includes the Part 1 code appendix from its basename. The included appendix PDF is a sourcing note, and the edited report preserves the other pages. The Lab 6 report retains the historical text, tables, code appendices, and two diagnostics. Six labeled synthetic illustrations replace the plots that displayed observations from the prepared trace. The corresponding LaTeX source retains the original figure names and captions. Building that source with the figures provided here will include the synthetic illustrations. [Figure authorship and trace provenance](LAB6_PLOT_REVIEW.md)

Existing rendered reports let readers inspect the evidence independently of missing rebuild assets. Label any regenerated report as a new build and record its inputs, toolchain and output hash.
