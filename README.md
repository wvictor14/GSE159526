
<!-- README.md is generated from README.Rmd. Please edit that file -->

# GSE159526

`GSE159526` is DNA methylation 850k microarray data on placental
chorionic villi and cell-sorted samples.

## Installation instructions

Install ExperimentHub to access the data

``` r
if (!require("BiocManager", quietly = TRUE))
    install.packages("BiocManager")

Biocmanager::install("ExperimentHub")
```

## Citation

Yuan, V., Hui, D., Yin, Y. et al. Cell-specific characterization of the
placental methylome. BMC Genomics 22, 6 (2021).
<https://doi.org/10.1186/s12864-020-07186-6>

Below is the citation output from using `citation('GSE159526')` in R.
Please run this yourself to check for any updates on how to cite
**GSE159526**.

``` r
print(citation("GSE159526"), bibtex = TRUE)
```

Please note that the `GSE159526` was only made possible thanks to many
other R and bioinformatics software authors, which are cited either in
the vignettes and/or the paper(s) describing this package.

## Code of Conduct

Please note that the `GSE159526` project is released with a [Contributor
Code of Conduct](http://bioconductor.org/about/code-of-conduct/). By
contributing to this project, you agree to abide by its terms.

## Development tools

-   Continuous code testing is possible thanks to [GitHub
    actions](https://www.tidyverse.org/blog/2020/04/usethis-1-6-0/)
    through *[usethis](https://CRAN.R-project.org/package=usethis)*,
    *[remotes](https://CRAN.R-project.org/package=remotes)*, and
    *[rcmdcheck](https://CRAN.R-project.org/package=rcmdcheck)*
    customized to use [Bioconductor’s docker
    containers](https://www.bioconductor.org/help/docker/) and
    *[BiocCheck](https://bioconductor.org/packages/3.13/BiocCheck)*.
-   Code coverage assessment is possible thanks to
    [codecov](https://codecov.io/gh) and
    *[covr](https://CRAN.R-project.org/package=covr)*.
-   The [documentation website](http://wvictor14.github.io/GSE159526) is
    automatically updated thanks to
    *[pkgdown](https://CRAN.R-project.org/package=pkgdown)*.
-   The code is styled automatically thanks to
    *[styler](https://CRAN.R-project.org/package=styler)*.
-   The documentation is formatted thanks to
    *[devtools](https://CRAN.R-project.org/package=devtools)* and
    *[roxygen2](https://CRAN.R-project.org/package=roxygen2)*.

For more details, check the `dev` directory.

This package was developed using
*[biocthis](https://bioconductor.org/packages/3.13/biocthis)*.
