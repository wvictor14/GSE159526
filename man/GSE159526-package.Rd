\name{GSE159526-package}

\alias{GSE159526-package}
\alias{GSE159526}

\title{GEO accession GSE159526 available as raw data in a
    \code{RGChannelSetExtended} object, and as processed normalized data.}

\description{
    19 term and 9 first trimester placental chorionic villi and matched
    cell-sorted samples ran on Illumina HumanMethylationEPIC DNA methylation
    microarrays. This data was made available on GEO accession
    [GSE159526](https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE159526).
    Both the raw and processed data has been made available on
    \code{ExperimentHub}.

    Raw unprocessed data formatted as an RGChannelSet object for
    integration and normalization using minfi and other existing Bioconductor
    packages.

    Processed normalized data is also available as a DNA methylation
    \code{matrix}, with a corresponding phenotype information as a
    \code{data.frame} object.
}

\details{dd
    See the vignette for examples of using these data in differential
    gene expression analysis.

    browseVignettes("GSE62944")

    Details of how these data were creates are in the scripts/ directory
    of the source package.
}

\examples{
    library(ExperimentHub)
    hub <- ExperimentHub()
    x <- query(hub, c("GSE62944", "tumor"))
    x
    y <- query(hub, c("GSE62944", "normal"))
    y
    \dontrun{
        ## download resource
        se_tumor = x[[1]]
        se_normal = y[[1]]
    }}

\keyword{utilities}
