% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/repairChootinan.R
\name{repairChootinan}
\alias{repairChootinan}
\title{Repair an infeasible solution with the method of Chootinan.}
\usage{
repairChootinan(x, gReal, rbf.model, cobra, checkIt = FALSE)
}
\arguments{
\item{x}{an infeasible solution vector \eqn{\vec{x}} of dimension \code{d}}

\item{gReal}{a vector \eqn{(g_1(\vec{x}),\ldots,g_m(\vec{x}),
               h_1(\vec{x}),\ldots,h_r(\vec{x}))}  
holding the real constraint values at \eqn{\vec{x}}}

\item{rbf.model}{the constraint surrogate models}

\item{cobra}{parameter list, we need here 
\describe{
  \item{\code{lower}}{   lower bounds of search region}
  \item{\code{upper}}{   upper bounds of search region}
  \item{\code{ri}}{      a list with all parameters for \code{repairChootinan}  }
  \item{\code{trueFuncForSurrogate}}{ if TRUE (only for diagnostics), use the true constraint
                functions instead of the constraint surrogate models 
                \code{rbf.model} }
  \item{\code{fn}}{   true functions, only needed in case of 
                      \code{trueFuncForSurrogate==TRUE} }
}}

\item{checkIt}{[FALSE] if TRUE, perform a check whether the returned solution is really 
feasible. Needs access to the true constraint function \code{conFunc}}
}
\value{
\code{z},  a vector of dimension \code{d} with a repaired (hopefully feasible) solution
}
\description{
Implements the method of [Choo2006] Chootinan & Chen "Constraint handling in genetic algorithms
using a gradient-based repair method", Computers & Operations Research 33 (2006), p. 2263.
}
\seealso{
\code{\link{repairInfeasRI2}}, \code{\link{cobraPhaseII}}
}
\author{
Wolfgang Konen, Cologne University of Applied Sciences
}
