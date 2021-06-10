### =========================================================================
### GSE159526 metadata
### -------------------------------------------------------------------------
###


meta <- data.frame(
    Title = c("GSE159526 raw data (rgset)", "GSE159526 processed data"),
    Description = c(paste0("Raw DNA methylation data derived from ",
                           "Illumina ",
                           "HumanMethylationEPIC ",
                           "DNA methylation microarrays (Yuan 2021), ",
                           "consisting of 19 term ",
                           "and 9 first trimester placental chorionic villi ",
                           "and matched cell-sorted ",
                           "samples. Formatted as an RGChannelSet object for ",
                           "integration and normalization using most of the ",
                           "existing Bioconductor packages."),
                    paste0("Processed DNA methylation data. Normalized with ",
                           "noob and BMIQ. Filtered for poor quality probes. ",
                           "See original publication for full description.",
                           " This data is formatted as",
                           " a [[FILL THIS IN]] object for ",
                           "immediate analysis")),
    BiocVersion = c("4.1"),
    Genome = rep("hg19", 1),
    SourceType = rep("tar.gz", 1),
    SourceUrl = rep(paste0("https://www.ncbi.nlm.nih.gov/geo/query/",
                           "acc.cgi?acc=GSE159526"), 1),
    SourceVersion = "Oct 21 2020",
    Species = "Homo sapiens",
    TaxonomyId = 9606,
    Coordinate_1_based = TRUE,
    DataProvider = paste0("Robinson lab"),
    Maintainer = "Victor Yuan <vyuan@bcchr.ca>",
    RDataClass = c("RGChannelSet", "") ,
    DispatchClass = c(rep("Rda",1)),
    RDataPath = c(paste0("GSE159526-raw.rda"), "GSE159526-processed"),
    Tags = "",
    Notes = paste0("")
)
write.csv(meta, file="inst/extdata/metadata.csv", row.names=FALSE)
