% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/breakSeekr.R
\name{breakSeekr}
\alias{breakSeekr}
\title{Find breakpoints from deltaWs}
\usage{
breakSeekr(deltaWs, trim = 10, peakTh = 0.33, zlim = 3.291)
}
\arguments{
\item{deltaWs}{A \code{\link{GRanges-class}} object with metadata column "deltaW" generated by \code{\link{deltaWCalculator}}.}

\item{trim}{The amount of outliers in deltaWs removed to calculate the stdev (10 will remove top 10\% and bottom 10\% of deltaWs).}

\item{peakTh}{The treshold that the peak deltaWs must pass to be considered a breakpoint (e.g. 0.33 is 1/3 of max(deltaW)).}

\item{zlim}{The number of stdev that the deltaW must pass the peakTh (ensures only significantly higher peaks are considered).}
}
\value{
A \code{\link{GRanges-class}} object containing breakpoint coordinates with various metadata columns.
}
\description{
Find breakpoints from deltaWs by localizing significant peaks based on z-score calculation.
}
\examples{
## Get an example file 
exampleFolder <- system.file("extdata", "example_bams", package="breakpointRdata")
exampleFile <- list.files(exampleFolder, full.names=TRUE)[1]
## Load the file
fragments <- readBamFileAsGRanges(exampleFile, pairedEndReads=FALSE, chromosomes='chr22')
## Calculate deltaW values
dw <- deltaWCalculator(fragments)
## Get significant peaks in deltaW values
breaks <- breakSeekr(dw)

}
\author{
David Porubsky, Aaron Taudt, Ashley Sanders
}
