# Download and validate a complete Kew Tree of Life release

This recursively indexes the remote release, downloads every file,
validates local file sizes against the remote index, and writes a CSV
manifest.

## Usage

``` r
tol_download_release(
  dest_dir = file.path("raw-data", normalize_release(release)),
  path = "",
  release = "current_release",
  manifest_path = file.path("raw-data", "kew_download_manifest.csv"),
  overwrite = FALSE,
  validate_only = FALSE,
  quiet = FALSE,
  base_url = tol_base_url(),
  timeout = 600,
  retries = 3,
  retry_wait = 5
)
```

## Arguments

- dest_dir:

  Local destination directory for the release contents.

- path:

  Directory path inside the release to download. Use `""` for the whole
  release, or paths such as `"fasta/by_gene"`.

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
