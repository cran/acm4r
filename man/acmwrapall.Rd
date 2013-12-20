\name{acmwrapall}
\alias{acmwrapall}
\title{acmwrapall (acm warp all)}
\usage{
acmwrapall(replic, patient, work_dir = ".", dnum = 1, delete = FALSE)
}
\arguments{
  \item{replic}{is the full name of the file containing the
  rflp result of replicate strains}

  \item{patient}{is the full name of the file containing
  the rflp result of strains in patients}

  \item{work_dir}{is where the datasets should be stored}

  \item{dnum}{is the file number}

  \item{delete}{logical value indicating if you want to
  delete any pre-existing files. Default is FALSE}
}
\value{
none
}
\description{
This function takes only take two required parameters. This
function calls the function call_erra, call_acm,
call_bablbs, call_gd1, call_gd2, and clusters with their
default arguments.
}
\author{
XiaoFei Zhao \email{xiaofei.zhao@mail.mcgill.ca}
}
\references{
Salamon et al. (1998) Accommodating Error Analysis in
Comparison and Clustering of Molecular Fingerprints.
Emerging Infectious Diseases Vol. 4, No. 2, April-June 1998
}

