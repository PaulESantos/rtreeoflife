# Build a URL for a Kew Tree of Life release

Build a URL for a Kew Tree of Life release

## Usage

``` r
tol_release_url(
  path = "",
  release = "current_release",
  base_url = tol_base_url()
)
```

## Arguments

- path:

  Optional path inside the release directory.

- release:

  Release directory. Use `"current_release"` or `"current"` for Kew's
  current release link.

- base_url:

  Base public URL.

## Value

A character scalar URL.
