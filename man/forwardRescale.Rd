% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/SACOBRA.R
\name{forwardRescale}
\alias{forwardRescale}
\title{Forward Rescaling}
\usage{
forwardRescale(x, cobra)
}
\arguments{
\item{x}{a vector in the original input space}

\item{cobra}{list from \code{\link{cobraInit}}, we need here
\describe{
   \item{originalL}{   a vector with lower bounds in original input space}
   \item{originalU}{   a vector with upper bounds in original input space}
   \item{newlower}{    a number, the rescaled lower bound for all dimensions}
   \item{newupper}{    a number, the rescaled upper bound for all dimensions}
}}
}
\value{
\code{z},      scaled version of vector x
}
\description{
Scale vector x in original space forward to rescaled space (usually \eqn{[-1,1]^d})
}
\seealso{
\code{\link{inverseRescale}}
}
