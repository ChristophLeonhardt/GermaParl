% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/speeches.R
\name{germaparl_add_s_attribute_speech}
\alias{germaparl_add_s_attribute_speech}
\title{Add Annotation of Speeches to GermaParl Corpus}
\usage{
germaparl_add_s_attribute_speech(mc = 1L, progress = TRUE)
}
\arguments{
\item{mc}{An integer value, the number of cores to use, passed into the \code{as.speeches} function}

\item{progress}{Logical, whether to indicate progress by showing a progress bar.}
}
\value{
A \code{NULL} value is returned invisibly.
}
\description{
The basic text unit in the GermaParl corpus are units of uninterrupted
speech. Speeches are interrupted by interjections, remarks of the presidency,
and questions from the Bundestag plenary. The heuristic of the
\code{as.speeches}-function from the \code{polmineR} package can be used to
generate partitions of speeches. This function will call \code{as.speeches}
and write back the finding as a structural attribute to the indexed GermaParl
corpus.
}
\details{
The \code{as.speeches}-function may consume several minutes. For writing the
structural attribute, the \code{s_attribute_encode} from the \code{cwbtools}
package is used.
}
