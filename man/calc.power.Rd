% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/calcPower.R
\name{calc.power}
\alias{calc.power}
\title{Power calcualtion function -- determines the power of concluding CPUE has increased from the "base" year}
\usage{
calc.power(ct_mat, ts_mat, mu_vec, sig_vec, alpha, n_mc = 100, quiet = T)
}
\arguments{
\item{ct_mat}{Count data from the "base" year}

\item{mu_vec}{A numerical vector specifying the "true" mean CPUE}

\item{sig_vec}{A numerical vector specifying the between transect log scale standard deviation}

\item{alpha}{The prescribed level of accuracy}

\item{n_mc}{The number of times to run the Monte Carlo simulation}
}
\value{
Returns the power of concluding that the cpue has increased since 2005. The rows of the matrix coorespond to the entries in mu_vec while the columns coorespond to entries in sig_vec.
}
\description{
Power calcualtion function -- determines the power of concluding CPUE has increased from the "base" year
}
\examples{
ct_mat <- get.ct.mat("S:/Jordy/louiseOP2020/Data/CPUE.xls", "CPUEL")
ct_mat <- ct_mat[,-11]
ts_mat <- pick.coords(lakelines, n_max)$ts_mat
mu_vec <- seq(0.1, 1, by=.1)
sig_vec <- c(0.05, 0.35, 0.85)
alpha <- 0.10
calc.power(ct_mat, ts_mat, mu_vec, sig_vec, alpha)
}
