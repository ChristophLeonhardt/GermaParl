% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/download.R
\name{germaparl_download_lda}
\alias{germaparl_download_lda}
\title{Download Topicmodels for GermaParl.}
\usage{
germaparl_download_lda(k = c(100L, 150L, 175L, 200L, 225L, 250L, 275L, 300L,
  350L, 400L, 450L, 500L),
  rds_file = sprintf("germaparl_lda_speeches_\%d.rds", k),
  webdir = "https://s3.eu-central-1.amazonaws.com/polmine/corpora/cwb/germaparl")
}
\arguments{
\item{k}{The number of topics of the topicmodel.}

\item{rds_file}{filename of the RData file}

\item{webdir}{The web location.}
}
\description{
A set of LDA topicmodels is deposited at a Amazon S3 webspace, for a number of topics between
100 and 500. The function
\code{germaparl_download_lda} to download the *.rds-file. It will be stored in the
\code{extdata/topicmodels/} subdirectory of the installed GermaParl package.
}
\examples{
topicmodel_dir <- system.file(package = "GermaParl", "extdata", "topicmodels")
lda_files <- Sys.glob(paths = sprintf("\%s/lda_germaparl_speeches_*.rds", topicmodel_dir))
if (length(lda_files) > 0  && requireNamespace("topicmodels")){
  lda <- readRDS(lda_files[1])
  lda_terms <- terms(lda, 50)
}
}
