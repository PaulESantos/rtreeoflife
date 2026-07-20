# Kew Tree of Life species index

A normalized species/specimen index exported from Kew Tree of Life
Explorer. Each row represents one Tree of Life sequence record and
includes taxonomic metadata, specimen metadata, recovery statistics, and
the FASTA URL for the corresponding `fasta/by_recovery` file.

## Usage

``` r
tol_species
```

## Format

A tibble with 20485 rows and 16 columns:

- sequence_id:

  Kew Tree of Life sequence identifier.

- data_source:

  Project, dataset, or repository source.

- order:

  Taxonomic order.

- family:

  Taxonomic family.

- genus:

  Taxonomic genus.

- specific_epithet:

  Specific epithet or infraspecific name text.

- specimen_reference:

  Voucher or specimen reference.

- specimen_barcode:

  Specimen barcode where available.

- collection_date:

  Collection year where available.

- country_of_origin:

  Country of origin where available.

- material_sampled:

  Sample material type.

- no_of_genes_recovered:

  Number of recovered Angiosperms353 genes.

- no_of_bp_recovered:

  Number of recovered base pairs.

- fasta_file_url:

  Remote FASTA URL for this sequence recovery.

- scientific_name:

  Combined genus and specific epithet.

- fasta_file_name:

  Basename of `fasta_file_url`.

## Source

Kew Tree of Life Explorer species list.
