# Download a predefined Kew Tree of Life bundle

Download a predefined Kew Tree of Life bundle

## Usage

``` r
tol_download_bundle(
  bundle = "manifests",
  dest_dir = tol_data_dir(),
  release = "current_release",
  overwrite = FALSE,
  quiet = FALSE,
  base_url = tol_base_url(),
  timeout = 600,
  retries = 3,
  retry_wait = 5
)
```

## Arguments

- bundle:

  Bundle name. See
  [`tol_known_bundles()`](https://PaulESantos.github.io/rtreeoflife/reference/tol_known_bundles.md).

- dest_dir:

  Local destination directory.

- release:

  Release directory. Defaults to Kew's current release link.

- overwrite:

  Replace existing local files.

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

A character vector with local file paths.
