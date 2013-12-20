\name{call_bablbs}
\alias{call_bablbs}
\title{BABLBS (Band Added Band Lost Band Substituted)}
\usage{
call_bablbs(intable, minmatch = 2)
}
\arguments{
  \item{intable}{is the name of the acm table.}

  \item{minmatch}{is the threshold of band number such that
  two lanes are matching if and only if the number of
  matching bands between them is more than minmatch.}
}
\value{
a matrix of 2 columns where each row represents a pair of
matching lanes.
}
\description{
BABLBS clustering means that two fingerprints match if they
differ only through a lost band, a gained band, or a
substituted band
}
\note{
\code{call_bablbs} doesn't work for minmatch<5

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
#bablbs, GD1, and GD2 all work with the results from call_acm
#now check matching by bablbs
res_bab<-call_bablbs(res1)
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

