# Download files from a Kew Tree of Life release

Download files from a Kew Tree of Life release

## Usage

``` r
tol_download(
  paths,
  dest_dir = tol_data_dir(),
  release = "current_release",
  overwrite = FALSE,
  preserve_dirs = TRUE,
  quiet = FALSE,
  base_url = tol_base_url(),
  timeout = 600,
  retries = 3,
  retry_wait = 5
)
```

## Arguments

- paths:

  Character vector of file paths inside the release directory.

- dest_dir:

  Local destination directory.

- release:

  Release directory. Defaults to Kew's current release link.

- overwrite:

  Replace existing local files.

- preserve_dirs:

  Preserve the remote directory structure below `dest_dir`.

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
