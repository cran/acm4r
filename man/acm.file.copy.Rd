\name{acm.file.copy}
\alias{acm.file.copy}
\title{acm.file.copy (the modified file.copy function in acm)}
\usage{
acm.file.copy(from, to, overwrite = FALSE, recursive = FALSE,
  copy.mode = TRUE)
}
\arguments{
  \item{from}{see file.copy}

  \item{to}{see file.copy}

  \item{overwrite}{see file.copy}

  \item{recursive}{see file.copy}

  \item{copy.mode}{see file.copy}
}
\value{
none
}
\description{
acm.file.copy behaves similar to file.copy except that the
program terminates and shows the already existing file
which cannot be overwritten by "to" if "overwrite = FALSE"
}
\author{
XiaoFei Zhao \email{xiaofei.zhao@mail.mcgill.ca}
}

