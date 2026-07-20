# Download FASTA files for selected species records

Download FASTA files for selected species records

## Usage

``` r
tol_download_fasta(
  records = NULL,
  dest_dir = NULL,
  manifest_path = if (is.null(dest_dir)) NULL else file.path("raw-data",
    "kew_fasta_download_manifest.csv"),
  overwrite = FALSE,
  validate_only = FALSE,
  quiet = FALSE,
  timeout = 600,
  retries = 3,
  retry_wait = 5,
  ...
)
```

## Arguments

- records:

  Species records returned by
  [`tol_species_index()`](https://PaulESantos.github.io/rtreeoflife/reference/tol_species_index.md)
  or
  [`tol_search_species()`](https://PaulESantos.github.io/rtreeoflife/reference/tol_search_species.md).
  If omitted, filters are applied to
  [`tol_species_index()`](https://PaulESantos.github.io/rtreeoflife/reference/tol_species_index.md).

- dest_dir:

  Local directory where FASTA files should be stored. If `NULL`, files
  are downloaded to a session temporary directory.

- manifest_path:

  Optional CSV manifest path. Use `NULL` to skip writing. If
  `dest_dir = NULL`, no manifest is written unless this is explicitly
  set.

- overwrite:

  Replace existing local FASTA files.

- validate_only:

  Report local status without downloading.

- quiet:

  Passed to
  [`utils::download.file()`](https://rdrr.io/r/utils/download.file.html).

- timeout:

  Download timeout in seconds.

- retries:

  Number of attempts for each file.

- retry_wait:

  Seconds to wait between attempts.

- ...:

  Filters passed to
  [`tol_search_species()`](https://PaulESantos.github.io/rtreeoflife/reference/tol_search_species.md)
  when `records` is omitted.

## Value

A data frame with one row per requested FASTA.
