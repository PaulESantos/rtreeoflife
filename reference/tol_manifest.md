# Read a downloaded Kew Tree of Life manifest

Read a downloaded Kew Tree of Life manifest

## Usage

``` r
tol_manifest(file, manifest = NULL, ...)
```

## Arguments

- file:

  Local path to a manifest file.

- manifest:

  Manifest type. Used only to assign column names when known.

- ...:

  Additional arguments passed to
  [`utils::read.delim()`](https://rdrr.io/r/utils/read.table.html).

## Value

A data frame.
