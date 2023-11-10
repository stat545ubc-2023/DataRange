
\#Installation
install_github(“<https://github.com/stat545ubc-2023/DataRange>”, ref =
“0.1.0”)

``` r
# install.packages("devtools")
devtools::install_github("https://github.com/stat545ubc-2023/DataRange")
```

    ## Downloading GitHub repo stat545ubc-2023/DataRange@HEAD

    ## 
    ## ── R CMD build ─────────────────────────────────────────────────────────────────
    ## * checking for file ‘/private/var/folders/zb/m371tt0d16b_8hxnq07q21dm0000gn/T/RtmpNK56wE/remotesb46a5e8a302e/stat545ubc-2023-DataRange-65a99d3/DESCRIPTION’ ... OK
    ## * preparing ‘DataRange’:
    ## * checking DESCRIPTION meta-information ... OK
    ## * checking for LF line-endings in source and make files and shell scripts
    ## * checking for empty or unneeded directories
    ## * building ‘DataRange_0.1.0.tar.gz’

    ## Installing package into '/private/var/folders/zb/m371tt0d16b_8hxnq07q21dm0000gn/T/RtmpET26F7/temp_libpathadee5c03a0f8'
    ## (as 'lib' is unspecified)

\#DESCRIPTION Package: DataRange Type: Package Title: Obtain the range
of one column Version: 0.1.0 Author: Mingming Zhang Maintainer: Mingming
Zhang <zhmm@student.ubc.ca> Description: This function can compute the
range of a column by using the column name from a dataset License: MIT +
file LICENSE Encoding: UTF-8 Roxygen: list(markdown = TRUE) RoxygenNote:
7.2.3 Imports: stats, dplyr, tibble, tidyr, tidyselect Suggests:
devtools, testthat (\>= 3.0.0), tidyverse Config/testthat/edition: 3

\#Usage

\#Example 1: In this example, use DataRange to obtain the range of
column “texture_mean” in dataset “cancer_sample” as well as the NA
number

``` r
#show the minum and maximun values in "texture_mean" column in cancer_sample dataset
library(datateachr)
library(dplyr)
```

    ## 
    ## Attaching package: 'dplyr'

    ## The following objects are masked from 'package:stats':
    ## 
    ##     filter, lag

    ## The following objects are masked from 'package:base':
    ## 
    ##     intersect, setdiff, setequal, union

``` r
library(DataRange)
DataRange(cancer_sample,"texture_mean")
```

    ## [1] "range= 9.71 to 39.28 number of NA= 0"

``` r
glimpse(DataRange(cancer_sample,"texture_mean"))
```

    ##  chr "range= 9.71 to 39.28 number of NA= 0"

\#Example 2: In this example, use DataRange to obtain the range of
column “diameter” in the dataset of vancouver_trees

``` r
diameter_range_Vtree<-DataRange(vancouver_trees,"diameter")
paste(diameter_range_Vtree)
```

    ## [1] "range= 0 to 435 number of NA= 0"
