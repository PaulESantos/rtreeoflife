# Choose a gene shared by multiple downloaded FASTA files

Choose a gene shared by multiple downloaded FASTA files

## Usage

``` r
tol_common_genes(plan, min_records = 3)
```

## Arguments

- plan:

  A data frame returned by
  [`tol_attach_fasta()`](https://PaulESantos.github.io/rtreeoflife/reference/tol_attach_fasta.md)
  or a FASTA plan with local files.

- min_records:

  Minimum number of records that must contain the gene.

## Value

A tibble ranked by number of records and median width.
