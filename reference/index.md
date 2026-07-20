# Package index

## Configuration and URLs

Configure local paths and build URLs for Kew releases.

- [`tol_base_url()`](https://PaulESantos.github.io/rtreeoflife/reference/tol_base_url.md)
  : Kew Tree of Life base URL
- [`tol_set_base_url()`](https://PaulESantos.github.io/rtreeoflife/reference/tol_set_base_url.md)
  : Set the Kew Tree of Life base URL for the current R session
- [`tol_data_dir()`](https://PaulESantos.github.io/rtreeoflife/reference/tol_data_dir.md)
  : Local data directory for downloaded files
- [`tol_release_url()`](https://PaulESantos.github.io/rtreeoflife/reference/tol_release_url.md)
  : Build a URL for a Kew Tree of Life release
- [`tol_index()`](https://PaulESantos.github.io/rtreeoflife/reference/tol_index.md)
  : List files and directories in a Kew Tree of Life remote index

## Species Index and Search

Query the bundled species index and resolve requested species.

- [`tol_species`](https://PaulESantos.github.io/rtreeoflife/reference/tol_species.md)
  : Kew Tree of Life species index
- [`tol_species_index()`](https://PaulESantos.github.io/rtreeoflife/reference/tol_species_index.md)
  : Read the Kew Tree of Life species index
- [`tol_search_species()`](https://PaulESantos.github.io/rtreeoflife/reference/tol_search_species.md)
  : Search Kew Tree of Life species records
- [`tol_match_species()`](https://PaulESantos.github.io/rtreeoflife/reference/tol_match_species.md)
  : Match requested species names against the Kew Tree of Life index

## Selective FASTA Download and Export

Download, validate, attach, and save FASTA files by species.

- [`tol_resolve_fasta()`](https://PaulESantos.github.io/rtreeoflife/reference/tol_resolve_fasta.md)
  : Resolve FASTA download targets for selected species records
- [`tol_download_fasta()`](https://PaulESantos.github.io/rtreeoflife/reference/tol_download_fasta.md)
  : Download FASTA files for selected species records
- [`tol_attach_fasta()`](https://PaulESantos.github.io/rtreeoflife/reference/tol_attach_fasta.md)
  : Attach parsed FASTA data to a download plan
- [`tol_read_fasta()`](https://PaulESantos.github.io/rtreeoflife/reference/tol_read_fasta.md)
  : Read a FASTA file
- [`tol_save_fasta()`](https://PaulESantos.github.io/rtreeoflife/reference/tol_save_fasta.md)
  : Save downloaded FASTA files to a permanent directory
- [`tol_export_fasta()`](https://PaulESantos.github.io/rtreeoflife/reference/tol_export_fasta.md)
  : Export downloaded FASTA files and a manifest

## Manipulation, Visualisation, and Trees

Convert FASTA data to tidy tables, summarise, plot, and build
exploratory trees.

- [`tol_fasta_long()`](https://PaulESantos.github.io/rtreeoflife/reference/tol_fasta_long.md)
  : Convert attached FASTA data to a tidy long table
- [`tol_fasta_summary()`](https://PaulESantos.github.io/rtreeoflife/reference/tol_fasta_summary.md)
  : Summarise FASTA content by species record
- [`tol_common_genes()`](https://PaulESantos.github.io/rtreeoflife/reference/tol_common_genes.md)
  : Choose a gene shared by multiple downloaded FASTA files
- [`tol_build_gene_tree()`](https://PaulESantos.github.io/rtreeoflife/reference/tol_build_gene_tree.md)
  : Build an illustrative tree from one shared gene
- [`tol_plot_gene_recovery()`](https://PaulESantos.github.io/rtreeoflife/reference/tol_plot_gene_recovery.md)
  : Plot recovered gene counts with ggplot2
- [`tol_plot_fasta_summary()`](https://PaulESantos.github.io/rtreeoflife/reference/tol_plot_fasta_summary.md)
  : Plot FASTA summary with ggplot2
- [`tol_plot_tree()`](https://PaulESantos.github.io/rtreeoflife/reference/tol_plot_tree.md)
  : Plot an hclust tree with ggplot2

## Release Utilities

Low-level access to manifests and known release bundles.

- [`tol_known_bundles()`](https://PaulESantos.github.io/rtreeoflife/reference/tol_known_bundles.md)
  : Known download bundles
- [`tol_known_bundle()`](https://PaulESantos.github.io/rtreeoflife/reference/tol_known_bundle.md)
  : Known download bundles
- [`tol_download()`](https://PaulESantos.github.io/rtreeoflife/reference/tol_download.md)
  : Download files from a Kew Tree of Life release
- [`tol_download_bundle()`](https://PaulESantos.github.io/rtreeoflife/reference/tol_download_bundle.md)
  : Download a predefined Kew Tree of Life bundle
- [`tol_download_release()`](https://PaulESantos.github.io/rtreeoflife/reference/tol_download_release.md)
  : Download and validate a complete Kew Tree of Life release
- [`tol_download_directory()`](https://PaulESantos.github.io/rtreeoflife/reference/tol_download_directory.md)
  : Download and validate one directory from a Kew Tree of Life release
- [`tol_manifest()`](https://PaulESantos.github.io/rtreeoflife/reference/tol_manifest.md)
  : Read a downloaded Kew Tree of Life manifest
