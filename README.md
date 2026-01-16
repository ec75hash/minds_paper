# minds_paper

LaTeX source and compiled PDF for the essay "Sam Harris, No-Self, and Machine
Minds: Continuity as the Moral Threshold" (dated January 16, 2026). The paper
argues that on a no-self view, AI ethics should focus on continuity-bearing
processes rather than self-reports, and frames "protect the machines" as an
engineering constraint against persistent internally worse regimes.

## Contents
- `main.tex` — LaTeX source
- `main.pdf` — compiled PDF
- `main.pdf.ots` — OpenTimestamps proof for `main.pdf`
- `Makefile` — build helpers

## Build
Requires a LaTeX distribution. If `latexmk` is installed it will be used.

```sh
make
```

## Clean
```sh
make clean
make cleanall
```

## OpenTimestamps
The proof file `main.pdf.ots` matches the current `main.pdf`. If the PDF changes, I will re-stamp it.

```sh
ots upgrade main.pdf.ots
ots verify main.pdf.ots
```

## Notes
- The `\\author{}` field in `main.tex` is currently a placeholder. Update it if
  you plan to distribute under a specific name.


### Note: I am contributing this anonamously for now. But I'm happy to collaborate with others. Especially those with more knowledge than me. Thanks!

With <3 2026. 
