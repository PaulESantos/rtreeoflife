# Convert attached FASTA data to a tidy long table

Convert attached FASTA data to a tidy long table

## Usage

``` r
tol_fasta_long(plan, fasta_column = "fasta")
```

## Arguments

- plan:

  A data frame returned by
  [`tol_attach_fasta()`](https://PaulESantos.github.io/rtreeoflife/reference/tol_attach_fasta.md)
  or a FASTA plan with local files.

- fasta_column:

  Name of the FASTA list-column. If it is not present,
  [`tol_attach_fasta()`](https://PaulESantos.github.io/rtreeoflife/reference/tol_attach_fasta.md)
  is called.

## Value

A tibble with one row per sequence.
