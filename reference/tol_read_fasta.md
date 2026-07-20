# Read a FASTA file

Read a FASTA file

## Usage

``` r
tol_read_fasta(file, as = c("data.frame", "list", "text"))
```

## Arguments

- file:

  Local FASTA file.

- as:

  Output format. `"data.frame"` returns one row per sequence with
  `header`, `sequence`, and `width`; `"list"` returns a named character
  vector; `"text"` returns raw file lines.

## Value

A data frame, named character vector, or character vector.
