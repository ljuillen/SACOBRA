% Generated by roxygen2 (4.1.1): do not edit by hand
% Please edit documentation in R/defaultTR.R
\name{defaultTR}
\alias{defaultTR}
\title{Default settings for the trust-region part of COBRA.}
\usage{
defaultTR()
}
\value{
a list with the following elements
   \describe{
     \item{radiMin}{Minimum fraction of the width of the search space to be used as radius of the trust region [c(0:1)]}
     \item{radiMax}{Maximum fraction of the width of the search space to be used as radius of the trust region [c(0:1)]}
     \item{radiInit}{Initial radius of trust region}
}
}
\description{
Sets default values for the trust-region part \code{cobra$TRlist} of COBRA.
With the call \code{\link{setOpts}(myTR,defaultTR())} it is possible to extend a partial list
\code{myTR} to a list containing all \code{TR}-elements (the missing ones are taken from
\code{defaultTR()}).
}
