% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/adjustedFunnorm.R
\name{adjustedFunnorm}
\alias{adjustedFunnorm}
\title{adjustedFunnorm}
\usage{
adjustedFunnorm(
  rgSet,
  nPCs = 2,
  sex = NULL,
  bgCorr = TRUE,
  dyeCorr = TRUE,
  keepCN = TRUE,
  ratioConvert = TRUE,
  verbose = TRUE
)
}
\arguments{
\item{rgSet}{An object of class "RGChannelSet".}

\item{nPCs}{Number of principal components from the control probes PCA.}

\item{sex}{An optional numeric vector containing the sex of the samples.}

\item{bgCorr}{Should the NOOB background correction be done, prior to 
functional normalization (see "preprocessNoob")}

\item{dyeCorr}{Should dye normalization be done as part of the NOOB 
background correction (see "preprocessNoob")?}

\item{keepCN}{Should copy number estimates be kept around? Setting to 'FALSE'
will decrease the size of the output object significantly.}

\item{ratioConvert}{Should we run "ratioConvert", ie. should the output be a 
"GenomicRatioSet" or should it be kept as a "GenomicMethylSet"; the latter 
is for experts.}

\item{verbose}{Should the function be verbose?}
}
\value{
an object of class "GenomicRatioSet", unless "ratioConvert=FALSE" in 
which case an object of class "GenomicMethylSet".
}
\description{
adjustedFunnorm utilizes functional normliasation to normalise autosomal
CpGs, and infers the sex chromosome linked CpGs by linear interpolation on 
corrected autosomal CpGs.
}
\examples{
\dontrun{
GRset <- adjustedFunnorm(RGSet)
}

}
\references{
Functional normalization of 450k methylation array data improves replication 
in large cancer studies, Fortin et al., 2014, Genome biology. \cr
interpolatedXY: a two-step strategy to normalise DNA methylation 
microarray data avoiding sex bias, Wang et al., 2021.
}
