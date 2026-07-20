# Save downloaded FASTA files to a permanent directory

Save downloaded FASTA files to a permanent directory

## Usage

``` r
tol_save_fasta(
  plan,
  dest_dir = file.path("raw-data", "fasta", "by_recovery"),
  overwrite = FALSE
)
```

## Arguments

- plan:

  A data frame returned by
  [`tol_download_fasta()`](https://PaulESantos.github.io/rtreeoflife/reference/tol_download_fasta.md)
  or
  [`tol_resolve_fasta()`](https://PaulESantos.github.io/rtreeoflife/reference/tol_resolve_fasta.md).

- dest_dir:

  Permanent destination directory.

- overwrite:

  Replace files that already exist in `dest_dir`.

## Value

A copy of `plan` with updated `local_path` and `status`.
