% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Gproblems.R
\name{COP}
\alias{COP}
\title{Constraint Optimization Problem Benchmark (G Function Suite)}
\description{
COP is an object of class \code{R6ClassGenerator} which can be used to access G problems (aka G functions) implementations in R, by simply generating a new instance of 
COP for each G function \code{problem<-COP.new("problem")}. The COP instances have the following useful attributes:\cr
\itemize{
\item name : name of the problem given by the user
\item dimension: dimension of the problem. For the scalable problems \code{G02} and \code{G03}, the dimension should be given by users, otherwise it will be set automaticaly
\item lower: lower boundary of the problem
\item upper: upper boundary of the problem
\item fn: the COP function which can be passed to SACOBRA. (see \code{fn} description in \code{\link{cobraInit}})
\item nConstraints: number of constraints
\item xStart: The suggested optimization starting point
\item solu: the best known solution, (only for diagnostics purposes)
\item info: information about the problem}
G function suite is a set of 24 constrained optimization problems with various properties like 
dimension, number of equality/ inequality constraint, feasibilty ratio, etc. 
Although these problems were introduced as a suite in a technical report at CEC 2006, many of them have been used by different
autors earlier.
\cr For more details see:
Liang, J., Runarsson, T.P., Mezura-Montes, E., Clerc, M., Suganthan, P.,
Coello, C.C., Deb, K.: Problem definitions and evaluation criteria for the CEC
2006 special session on constrained real-parameter optimization. Journal of
Applied Mechanics 41, 8 (2006), \url{http://www.lania.mx/~emezura/util/files/tr_cec06.pdf}
}
\examples{
##creating an instance for G24 problem
G24<-COP$new("G24")

##initializing SACOBRA
cobra <- cobraInit(xStart=G24$lower, fName=G24$name,
                   fn=G24$fn,  
                   lower=G24$lower, upper=G24$upper, feval=25)
                   
## Run sacobra optimizer
cobra <- cobraPhaseII(cobra)

## The true solution is at solu = G24$solu
## The solution found by SACOBRA:
print(getXbest(cobra))
print(getFbest(cobra))                    
plot(abs(cobra$df$Best-G24$fn(G24$solu)[1]),log="y",type="l",
ylab="error",xlab="iteration",main=G24$name)


## creating an instance for G03 in 2-dimensional space
G03<-COP$new("G03",2)

## Initializing sacobra
cobra <- cobraInit(xStart=G03$lower, fn=G03$fn, 
fName=G03$name, lower=G03$lower, upper=G03$upper, feval=40)

}
\author{
Samineh Bagheri, Wolfgang Konen
}
\keyword{datasets}
\section{Methods}{
\subsection{Public methods}{
\itemize{
\item \href{#method-new}{\code{COP$new()}}
\item \href{#method-clone}{\code{COP$clone()}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-new"></a>}}
\if{latex}{\out{\hypertarget{method-new}{}}}
\subsection{Method \code{new()}}{
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{COP$new(name, dimension)}\if{html}{\out{</div>}}
}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-clone"></a>}}
\if{latex}{\out{\hypertarget{method-clone}{}}}
\subsection{Method \code{clone()}}{
The objects of this class are cloneable with this method.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{COP$clone(deep = FALSE)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{deep}}{Whether to make a deep clone.}
}
\if{html}{\out{</div>}}
}
}
}
