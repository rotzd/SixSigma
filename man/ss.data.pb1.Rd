% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/data.R
\docType{data}
\name{ss.data.pb1}
\alias{ss.data.pb1}
\title{Particle Boards Example - Individual Data}
\format{A data frame with 30 observations on the following 2 variables.
  \describe{
    \item{\code{pb.group}}{Group id (distinct for each observation)}
    \item{\code{pb.humidity}}{Humidity of the particle board}
  }}
\source{
See references.
}
\usage{
data(ss.data.pb1)
}
\description{
Humidity of 30 raw material used to make particle boards for individual control chart.
}
\note{
This data set is used in chapter 12 of the book ``Six Sigma with R'' (see 
References).
}
\examples{
data(ss.data.pb1)
summary(ss.data.pb1)
library(qcc)
pb.groups.one <- with(ss.data.pb1, qcc.groups(pb.humidity, pb.group))
pb.xbar.one <- qcc(pb.groups.one, type="xbar.one")
summary(pb.xbar.one)
plot(pb.xbar.one)

}
\references{
Cano, Emilio L., Moguerza, Javier M. and Redchuk, Andrés. 2012.
\emph{Six Sigma with {R}. Statistical Engineering for Process
  Improvement}, Use R!, vol. 36. Springer, New York.
  \url{http://www.springer.com/statistics/book/978-1-4614-3651-5}.\cr
}
\keyword{cc}
\keyword{data}
