# Download and validate one directory from a Kew Tree of Life release

Convenience wrapper around
[`tol_download_release()`](https://PaulESantos.github.io/rtreeoflife/reference/tol_download_release.md)
for subdirectories such as `"fasta/by_gene"`, `"fasta/alignments"`, or
`"tree/species"`.

## Usage

``` r
tol_download_directory(
  path,
  dest_dir = file.path("raw-data", normalize_release(release)),
  release = "current_release",
  manifest_path = file.path("raw-data", paste0("kew_download_", gsub("[^A-Za-z0-9]+",
    "_", normalize_remote_path(path)), ".csv")),
  overwrite = FALSE,
  validate_only = FALSE,
  quiet = FALSE,
  base_url = tol_base_url(),
  timeout = 600,
  retries = 5,
  retry_wait = 10
)
```

## Arguments

- path:

  Directory path inside the release.

- dest_dir:

  Local destination directory for the release contents.

- release:

  Release directory. Defaults to Kew's current release link.

- manifest_path:

  Local CSV manifest path.

- overwrite:

  Replace existing local files.

- validate_only:

  Only index and validate existing local files.

- quiet:

  Passed to
  [`utils::download.file()`](https://rdrr.io/r/utils/download.file.html).

- base_url:

  Base public URL.

- timeout:

  Download timeout in seconds.

- retries:

  Number of attempts for each file.

- retry_wait:

  Seconds to wait between attempts.

## Value

A data frame with release id, remote paths, local paths, sizes, and
validation status.
