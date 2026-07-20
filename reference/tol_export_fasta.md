# Export downloaded FASTA files and a manifest

Export downloaded FASTA files and a manifest

## Usage

``` r
tol_export_fasta(
  plan,
  dest_dir = file.path("raw-data", "fasta", "by_recovery"),
  manifest_path = file.path(dest_dir, "fasta_export_manifest.csv"),
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

  Permanent destination directory for FASTA files.

- manifest_path:

  Optional CSV manifest path. If `NULL`, no manifest is written.

- overwrite:

  Replace files that already exist in `dest_dir`.

## Value

A tibble with copied file paths and export status.
