### =========================================================================
### GSE159526 metadata
### -------------------------------------------------------------------------
###


meta <- data.frame(
    Title = c("GSE159526 raw data (rgset), dimesnions: 1051815 131",
              paste0("GSE159526 processed normalized data (matrix), ",
                     "dimensions: 737050 131"),
              "GSE159526 phenotype data (data.frame), dimensions: 131 13"),
    Description = c(paste0("Raw DNA methylation data derived from ",
                           "Illumina HumanMethylationEPIC ",
                           "DNA methylation microarrays (Yuan 2021), ",
                           "consisting of 19 term ",
                           "and 9 first trimester placental chorionic villi ",
                           "and matched cell-sorted ",
                           "samples. Formatted as an RGChannelSet object for ",
                           "integration and normalization using most of the ",
                           "existing Bioconductor packages."),
                    paste0("Processed DNA methylation data. Normalized with ",
                           "noob and BMIQ. Filtered for poor quality probes. ",
                           "See original publication for full description. ",
                           "This data is formatted as ",
                           "a matrix object for ",
                           "immediate analysis."),
                    paste0("Phenotype data containing information on each ",
                           "sample. Each row corresponds to a sample, and ",
                           "each column is a variable. ",
                           "Formatted as a data.frame object.")),
    BiocVersion = c("4.1"),
    Genome = c("hg19", "hg19", ""),
    SourceType = rep("tar.gz", 1),
    SourceUrl = rep(paste0("https://www.ncbi.nlm.nih.gov/geo/query/",
                           "acc.cgi?acc=GSE159526"), 1),
    SourceVersion = "Oct 21 2020",
    Species = "Homo sapiens",
    TaxonomyId = 9606,
    Coordinate_1_based = TRUE,
    DataProvider = paste0("Robinson lab"),
    Maintainer = "Victor Yuan <vyuan@bcchr.ca>",
    RDataClass = c("RGChannelSet", "matrix", "data.frame"),
    DispatchClass = c(rep("Rda",1)),
    RDataPath = c(paste0("GSE159526/0.99.0/GSE159526_raw_rgset.Rda"),
                  "GSE159526/0.99.0/GSE159526_processed_matrix.Rda",
                  "GSE159526/0.99.0/GSE159526_phenodata_df.Rda"),
    Tags = "",
    Notes = paste0("")
)
write.csv(meta, file="inst/extdata/metadata.csv", row.names=FALSE)
