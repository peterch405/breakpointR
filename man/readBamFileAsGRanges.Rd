% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/importReads.R
\name{readBamFileAsGRanges}
\alias{readBamFileAsGRanges}
\title{Import BAM file into GRanges}
\usage{
readBamFileAsGRanges(file, bamindex = file, chromosomes = NULL,
  pairedEndReads = FALSE, min.mapq = 10, remove.duplicate.reads = FALSE,
  pair2frgm = FALSE)
}
\arguments{
\item{file}{Bamfile with aligned reads.}

\item{bamindex}{Bam-index file with or without the .bai ending. If this file does not exist it will be created and a warning is issued.}

\item{chromosomes}{If only a subset of the chromosomes should be binned, specify them here.}

\item{pairedEndReads}{Set to \code{TRUE} if you have paired-end reads in your file.}

\item{min.mapq}{Minimum mapping quality when importing from BAM files.}

\item{remove.duplicate.reads}{A logical indicating whether or not duplicate reads should be kept.}

\item{pair2frgm}{Set to \code{TRUE} if every paired-end read should be merged into a single fragment}
}
\value{
A \code{\link[GenomicRanges]{GRanges}}.
}
\description{
Import aligned reads from a BAM file into a \code{\link[GenomicRanges]{GRanges}} object.
}
\author{
Aaron Taudt, David Porubsky, Ashley Sanders
}
