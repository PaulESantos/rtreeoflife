# Summarise FASTA content by species record

Summarise FASTA content by species record

## Usage

``` r
tol_fasta_summary(plan)
```

## Arguments

- plan:

  A data frame returned by
  [`tol_attach_fasta()`](https://PaulESantos.github.io/rtreeoflife/reference/tol_attach_fasta.md)
  or a FASTA plan with local files.

## Value

A tibble with one row per species/specimen FASTA.
