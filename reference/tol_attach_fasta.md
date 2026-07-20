# Attach parsed FASTA data to a download plan

Attach parsed FASTA data to a download plan

## Usage

``` r
tol_attach_fasta(
  plan,
  column = "fasta",
  as = c("data.frame", "list", "text"),
  missing = c("empty", "error")
)
```

## Arguments

- plan:

  A data frame returned by
  [`tol_download_fasta()`](https://PaulESantos.github.io/rtreeoflife/reference/tol_download_fasta.md),
  [`tol_resolve_fasta()`](https://PaulESantos.github.io/rtreeoflife/reference/tol_resolve_fasta.md),
  or
  [`tol_save_fasta()`](https://PaulESantos.github.io/rtreeoflife/reference/tol_save_fasta.md).

- column:

  Name of the list-column to create.

- as:

  FASTA representation passed to
  [`tol_read_fasta()`](https://PaulESantos.github.io/rtreeoflife/reference/tol_read_fasta.md).

- missing:

  What to store for missing files. `"empty"` stores an empty data
  frame/list/text value; `"error"` stops on the first missing file.

## Value

A data frame with a FASTA list-column.
