\name{clusters}
\alias{clusters}
\title{Clustering}
\usage{
clusters(input, bablbs, type = "exact", work_dir = "")
}
\arguments{
  \item{input}{is the result of the call_acm function in
  the format of ULI ULI numbands numbands num_matches}

  \item{bablbs}{is the result of the call_bablbs, call_gd1
  or call_gd2 function in the format of ULI ULI}

  \item{work_dir}{is where the datasets should be stored}

  \item{type}{value ("exact", "bablbs", "gd1", "gd2")
  indicating if you want exact matching or BABLBS/Genetic
  Distance. Default is "exact" i.e. exact matching.}
}
\value{
A list with 7 components.  The first (SINGLE) is a 3 column
matrix of all fingerprint IDs that do not belong to a
cluster. The columns correspond to the Cluster_Number, the
Cluster_size, and the Fingerprint ID. The second
(CLUSTERED) is a matrix of all fingerprint IDs that do
belong to a cluster. The columns correspond to the
Cluster_Number, the Cluster_size, and the Fingerprint IDs
that belong to that cluster. The third (BOTH) combines the
others into one matrix. The fourth and fifth calculate RTIN
and RTIn-1.  The last two are used for the histograms that
are produced by a call to this function.
}
\description{
Clustering for exact matching and BABLBS matching
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
res_bab<-call_bablbs(res1)
res_gd1<-call_gd1(res1)
}
#synthesize the results
# Exact matching clusters
exact<-clusters(input=res1,type="exact")
names(exact)
exact$RTIN
exact$RTIN1
# Clustering based on BABLBS
bablbs<-clusters(input=res1, bablbs=res_bab,type="bablbs")
names(bablbs)
bablbs$RTIN
bablbs$RTIN1
# Clustering based on GD1
gd1<-clusters(input=res1, bablbs=res_gd1,type="gd1")
names(gd1)
gd1$RTIN
gd1$RTIN1
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

