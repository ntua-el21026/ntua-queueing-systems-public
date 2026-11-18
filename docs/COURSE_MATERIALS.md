# Queuing Systems course materials

NTUA NETMODE supplied the instructional files catalogued below. These names identify historical inputs and source documents. Obtain the relevant edition via the official course catalogue or enrollment-controlled course portal. [NTUA course catalogue](https://www.ece.ntua.gr/en/education/undergraduate/courses?courseId=3248) · [NTUA course portal](https://courses.ntua.gr/enrol/index.php?id=908)

| External material | Function and technical use | Retained work and reproduction |
|---|---|---|
| Eleven lectures and fifteen lab introductions, assignments, or tutorials | Teaching references describe the derivations, required outputs, and constraints. They help interpret the submitted analyses and are independent of the maintained simulation runtime. | All six reports, original programs, and recorded results remain. Local implementations can be read without the PDFs. Exact assignment context is conditional on course access. |
| Lab 1 starter and text copy | Course reference implementation for the probability and Poisson exercises. The base is needed to reconstruct the submitted Part 1 variant. | The exact delta, student analyses, and Parts 2–3 are retained. Part 1 replay is conditional on the separately obtained base and Octave statistics. The previously mirrored five-page code listing was replaced with a source note in both rendered reports. [Lab 1 setup](../labs/1st/README.md#run) |
| Labs 2–5 helper scripts and text copies | Guided examples and suggested methods for CTMC computation, simulation, Erlang C, and network analysis. | Independent scripts, seed regression, reports, and metrics remain. The listed helper copies are reference material. Execution uses the dependencies in each lab README. |
| Lab 6 filter and regression starters | Reference approaches for the forecasting assignment. These helped define comparisons for the independently implemented model and selection code. | Both maintained and submitted analysis scripts remain. Exact numerical replay requires the authorized prepared trace. [Lab 6](../labs/6th/README.md) |
| Lab 6 prepared `dataset.mat` copies | Runtime input holding the GPU request vector used in the forecasting study. The original repositories stored identical copies under the assignment and working-program paths. | The archived metrics, diagnostic plots, implementation, and report analysis are included. Six synthetic illustrations demonstrate the forecasting methods where the original figures showed the observed workload. The exact upstream release and terms for the prepared vector remain unverified. For historical replay, obtain the course-provided vector and set `LAB6_DATASET_MAT`. [Trace input and hash](../labs/6th/README.md#inputs-and-outputs) · [Figure provenance](LAB6_PLOT_REVIEW.md) |
| Earlier names for lectures and lab materials | Earlier Git objects trace the history of the course reference set, including former aliases and recategorized handouts. | They are documented as history in the preserved original. The exact current variant, if needed, should come from authorized course access. |

## Original reference filenames

The following entries record the original reference paths. The repository contains the access instructions and original student contributions.

- `docs/lectures/1. Εισαγωγή.pdf`
- `docs/lectures/10. Μέθοδοι Πρόβελψης - 1.pdf`
- `docs/lectures/11. Μέθοδοι Πρόβελψης - 2.pdf`
- `docs/lectures/2. Τεχνικές Σχεδίασης και Αξιολόγησης Συστημάτων Αναμονής.pdf`
- `docs/lectures/3. Παράμετροι Ουρών και Συστημάτων Αναμονής.pdf`
- `docs/lectures/4. Εκθετική Κατανομή και Κατανομή Poisson - Διαδικασία Markov Γεννήσεων - Θανάτων.pdf`
- `docs/lectures/5. Σφαιρικές & Λεπτομερείς Εξισώσεις Ισορροπίας - Ουρές Markov MM1, MM1N.pdf`
- `docs/lectures/6. Προσομοίωση.pdf`
- `docs/lectures/7. Συστήματα Πολλών Εξυπηρετητών.pdf`
- `docs/lectures/8. Ασκήσεις-Παραδείγματα.pdf`
- `docs/lectures/9. Δίκτυα Ουρών Αναμονής.pdf`
- `labs/1st/assignment/Octave_Tutorial.pdf`
- `labs/1st/assignment/lab1_2026.pdf`
- `labs/1st/assignment/lab1_help_code.m`
- `labs/1st/assignment/lab1_help_code.txt`
- `labs/1st/assignment/lab1_intoduction_2026.pdf`
- `labs/2nd/assignment/lab2_2026.pdf`
- `labs/2nd/assignment/lab2_help_code.m`
- `labs/2nd/assignment/lab2_help_code.txt`
- `labs/2nd/assignment/lab2_intoduction_2026.pdf`
- `labs/3rd/assignment/lab3_2026.pdf`
- `labs/3rd/assignment/lab3_help_code.m`
- `labs/3rd/assignment/lab3_help_code.txt`
- `labs/3rd/assignment/lab3_intoduction_2026.pdf`
- `labs/4th/assignment/lab4_2026.pdf`
- `labs/4th/assignment/lab4_extra.pdf`
- `labs/4th/assignment/lab4_help_code.m`
- `labs/4th/assignment/lab4_help_code.txt`
- `labs/4th/assignment/lab4_intoduction_2026.pdf`
- `labs/5th/assignment/lab5_2026.pdf`
- `labs/5th/assignment/lab5_help_code.m`
- `labs/5th/assignment/lab5_help_code.txt`
- `labs/5th/assignment/lab5_introduction_2026.pdf`
- `labs/6th/assignment/filter_forecasting.m`
- `labs/6th/assignment/filter_forecasting.txt`
- `labs/6th/assignment/lab6_2026.pdf`
- `labs/6th/assignment/lab6_introduction_1_2026.pdf`
- `labs/6th/assignment/lab6_introduction_2_2026.pdf`
- `labs/6th/assignment/regression_forecasting.m`
- `labs/6th/assignment/regression_forecasting.txt`
