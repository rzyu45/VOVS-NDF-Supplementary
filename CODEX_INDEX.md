# Supplementary-material index

Supplementary material for the manuscript TPWRS-02134-2025, "Acceleration of Gas-to-Power Cascading Fault Simulation Using Variable-Order-Variable-Step Numerical Differential Formulae". This is an independent git repository at the same level as `R1/response/`. It is a single-column IEEEtran document with its own bibliography (`supp.bib`), built with pdflatex + bibtex.

## Build

- `latexmk` from this folder compiles `main.tex` (pdflatex → bibtex → pdflatex). Recipe in `.latexmkrc`.
- `latexmk -c` cleans auxiliary files; `latexmk -C` also removes `main.pdf`.

## Files

- `main.tex` — entry point. Single-column IEEEtran. Holds the four appendices moved out of the main manuscript. Sections, equations, figures, and tables are numbered with an "S" prefix so the manuscript can refer to them as "Section S1", etc.
- `abbr.tex` — macro/abbreviation definitions, copied from `NDF-paper/abbr.tex`. The `\rev` highlighting macro is redefined as the identity here, because the entire supplement is new R1 material.
- `supp.bib` — independent bibliography. Contains only the four references cited in the moved appendices: `sauerPowerSystemDynamics2018`, `cuiHybridSymbolicNumericFramework2021`, `rowenSimplifiedMathematical1983`, `milanoPowerSystemModelling2010`.
- `fig/leak_oscillation.pdf` — figure for the gas-PDE numerical-dispersion section, copied from `NDF-paper/fig/`.
- `.latexmkrc`, `.gitignore` — build config and ignore rules.

## Section map (supplement ↔ manuscript reference)

| Supplement section | Title | Referenced in manuscript as |
|---|---|---|
| S1 | Selection of the NDF damping coefficient | Section S1 (was Appendix D) |
| S2 | Local convergence of simplified Newton with delayed Jacobian | Section S2 (was Appendix E) |
| S3 | Numerical Dispersion in the Spatial Discretization of the Gas-Network PDEs | Section S3 (was Appendix F) |
| S4 | Electric Power System Component Models | Section S4 (was Appendix G) |

The manuscript retains Appendices A–C (the two propositions' proofs and the backward-difference step-size transformation derivation).

## Provenance

These four sections were moved verbatim out of `NDF-paper/appendix.tex` during the R1 revision. Transformations applied on move: `\subsection` → `\section`; full-width `figure*` → single-column `figure`; the one cross-document `\eqref{eq: trunc}` was reworded to prose referring to the main manuscript. All internal equation/figure/table cross-references resolve within this document.
