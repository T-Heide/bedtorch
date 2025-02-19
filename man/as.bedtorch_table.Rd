% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/utils.R
\name{as.bedtorch_table}
\alias{as.bedtorch_table}
\title{Convert a \code{GenomicRanges} or a \code{data.frame} BED to standard \code{data.table} BED}
\usage{
as.bedtorch_table(x, genome = NULL)
}
\arguments{
\item{x}{An input. Must be either \code{GenomicRanges} or \code{data.frame}. If a
\code{data.frame}, the first three columns should be chrom, start and end. For
column names, refer to \code{\link[GenomicRanges:makeGRangesFromDataFrame]{GenomicRanges::makeGRangesFromDataFrame()}}.}
}
\value{
\code{data.table} converted from \code{x}.
}
\description{
Convert a \code{GenomicRanges} or a \code{data.frame} BED to standard \code{data.table} BED
}
\examples{
gr <- read_bed(system.file("extdata", "example_merge.bed", package = "bedtorch"), 
               use_gr = TRUE, genome = "hs37-1kg")
as.bedtorch_table(gr)
}
