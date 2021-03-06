% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cpueBoot.R
\name{CPUE.boot}
\alias{CPUE.boot}
\title{For the Rao two stage bootstrap}
\usage{
CPUE.boot(cmat, B = 1000)
}
\arguments{
\item{cmat}{A matrix containing the fish counts. Note: columns represent transects and rows represent sets within transects.}

\item{B}{The number of bootstrap iterations.}
}
\value{
Returns a list where $CPUE_B is the ordinary bootstrapped sampling distribution and $CPUE_Bc is the bias corrected sampling distribution.
}
\description{
For the Rao two stage bootstrap
}
\examples{
ct_mat <- get.ct.mat("S:/Jordy/louiseOP2020/Data/CPUE.xls", "CPUEL")
ct_mat <- ct_mat[,-11]
CPUE.boot(ct_mat)
}
