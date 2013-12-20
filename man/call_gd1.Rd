\name{call_gd1}
\alias{call_gd1}
\title{Genetic Distance 1}
\usage{
call_gd1(intable, gcrit = 5, lambda = 0.05)
}
\arguments{
  \item{intable}{is the name of the acm table.}

  \item{gcrit}{is the threshold of genetic distance such
  that two lanes are matching if and only if the genetic
  distance between them is less than gcrit. Is used to get
  a list of ids for subjects who have gd distance less than
  gcrit}

  \item{lambda}{is the minimum number of bands that need to
  match}
}
\value{
A matrix with two colums of fingerprint IDs. Each line
represents a match according to \code{gcrit}.
}
\description{
Genetic Distance 1 which includes a lambda parameter
}
\note{
Pass the result of this function to and pass this result to
\code{clusters} to synthesize the results
}
\examples{
\dontshow{
(WD <- getwd())
if (!is.null(WD)) setwd(WD)
data(replicates.in)
write.table(replicates.in,  "replicates.in", quote=FALSE, row.names=FALSE)
data(experiments.in)
write.table(experiments.in, "experiments.in", quote=FALSE, row.names=FALSE)
call_erra("replicates.in",  dnum=1, sd=1, delete=TRUE)
res1<-call_acm("experiments.in")
}
#matching by GD1
res_gd1<-call_gd1(res1)
}
\author{
Andrea Benedetti \email{andrea.benedetti@mcgill.ca}

Sahir Rai Bhatnagar

XiaoFei Zhao
}
\references{
Salamon et. al (1998) Accommodating Error Analysis in
Comparison and Clustering of Molecular Fingerprints.
Emerging Infectious Diseases Vol. 4, No. 2, April-June 1998

Abasci LLC. JAMES v1.0 User Documentation. 2002.
}

