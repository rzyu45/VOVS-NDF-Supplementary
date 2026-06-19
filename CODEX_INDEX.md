# Supplementary-material index

Supplementary material for the manuscript TPWRS-02134-2025, "Acceleration of Gas-to-Power Cascading Fault Simulation Using Variable-Order-Variable-Step Numerical Differentiation Formulae". This is an independent git repository at the same level as `R1/response/`. It is a single-column IEEEtran document with its own bibliography (`supp.bib`), built with pdflatex + bibtex.

## Build

- `latexmk` from this folder compiles `main.tex` (pdflatex → bibtex → pdflatex). Recipe in `.latexmkrc`.
- `latexmk -c` cleans auxiliary files; `latexmk -C` also removes `main.pdf`.

## Files

- `main.tex` — entry point. Single-column IEEEtran. Holds supplementary sections moved out of, or supporting, the main manuscript. Sections, equations, figures, and tables are numbered with an "S" prefix so the manuscript can refer to them as "Section S1", etc.
- `main.pdf` — compiled supplementary material kept in the repository root for direct access.
- `abbr.tex` — macro/abbreviation definitions, copied from `NDF-paper/abbr.tex`. The `\rev` highlighting macro is redefined as the identity here, because the entire supplement is new R1 material.
- `supp.bib` — independent bibliography. Contains only the four references cited in the moved appendices: `sauerPowerSystemDynamics2018`, `cuiHybridSymbolicNumericFramework2021`, `rowenSimplifiedMathematical1983`, `milanoPowerSystemModelling2010`.
- `fig/leak_oscillation.pdf` — figure for the gas-PDE numerical-dispersion section, copied from `NDF-paper/fig/`.
- `README.md`, `LICENSE` — public-facing repository overview and CC-BY-4.0 license.
- `.latexmkrc`, `.gitignore` — build config and ignore rules.

## Section map (supplement ↔ manuscript reference)

| Supplement section | Title | Referenced in manuscript as |
|---|---|---|
| S1 | Selection of the NDF damping coefficient | Section S1 (was Appendix D) |
| S2 | Numerical Dispersion in the Spatial Discretization of the Gas-Network PDEs | Section S2 (was Appendix F) |
| S3 | Electric Power System Component Models | Section S3 (was Appendix G) |

The manuscript retains the two propositions' proofs, the backward-difference step-size transformation derivation, and the local convergence proof for simplified Newton with a delayed Jacobian.

## Provenance

The supplementary material originally held four moved appendix sections during the R1 revision. The local convergence proof for simplified Newton with a delayed Jacobian has been moved back to the manuscript appendix, and the former implementation-level convergence-monitor section has been removed after its threshold logic was integrated into the main manuscript. Transformations applied on move: `\subsection` → `\section`; full-width `figure*` → single-column `figure`; the one cross-document `\eqref{eq: trunc}` was reworded to prose referring to the main manuscript. All internal equation/figure/table cross-references resolve within this document.
