# Resolve FASTA download targets for selected species records

Resolve FASTA download targets for selected species records

## Usage

``` r
tol_resolve_fasta(records, dest_dir = NULL)
```

## Arguments

- records:

  Species records returned by
  [`tol_species_index()`](https://PaulESantos.github.io/rtreeoflife/reference/tol_species_index.md)
  or
  [`tol_search_species()`](https://PaulESantos.github.io/rtreeoflife/reference/tol_search_species.md).

- dest_dir:

  Local directory where FASTA files should be stored. If `NULL`, a
  session temporary directory is used.

## Value

A data frame describing FASTA URLs and local paths.
