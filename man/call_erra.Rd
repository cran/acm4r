\name{call_erra}
\alias{call_erra}
\title{Error Analysis for 1D Electrophoresis Gels}
\usage{
call_erra(rep.file, work_dir = ".", dnum = 1, sd = 4, delete = FALSE)
}
\arguments{
  \item{rep.file}{is the full name and path of the
  replicate file}

  \item{work_dir}{is where the datasets should be stored}

  \item{dnum}{is the file number}

  \item{sd}{is the standard deviation needed to calculate
  all things, Salamon et al. (1998) suggested a value of 4
  for sd}

  \item{delete}{logical value indicating if you want to
  delete any pre-existing acm.par files. Default is FALSE}
}
\value{
the parameter filed called acm.par, needed by call_acm.
This file contains information on about the measurement
error present in the data.
}
\description{
This function analyzes fingerprint replicate data.
Replicates are repeated measurements of the same sample in
one or more gels, which allows the reproducibility of the
measurement to be ascertained.
}
\note{
\code{call_erra} doesn't work for unequal number of trials.
This function needs to be run before call_acm.
}
\examples{
\dontshow{
(WD <- getwd())
if (!is.null(WD)) setwd(WD)
data(replicates.in)
write.table(replicates.in,  "replicates.in", quote=FALSE, row.names=FALSE)
}
#generate the error parameter file needed by call_acm
call_erra("replicates.in",  dnum=1, sd=1, delete=TRUE)
}
\author{
Andrea Benedetti \email{andrea.benedetti@mcgill.ca}

Sahir Rai Bhatnagar

XiaoFei Zhao
}
\references{
Salamon et al. (1998) Accommodating Error Analysis in
Comparison and Clustering of Molecular Fingerprints.
Emerging Infectious Diseases Vol. 4, No. 2, April-June 1998

Abasci LLC. JAMES v1.0 User Documentation. 2002.
}

