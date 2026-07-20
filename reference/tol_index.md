# List files and directories in a Kew Tree of Life remote index

List files and directories in a Kew Tree of Life remote index

## Usage

``` r
tol_index(path = "", release = "current_release", base_url = tol_base_url())
```

## Arguments

- path:

  Directory path inside the release.

- release:

  Release directory. Defaults to Kew's current release link.

- base_url:

  Base public URL.

## Value

A data frame with `name`, `path`, `url`, and `is_dir`.
