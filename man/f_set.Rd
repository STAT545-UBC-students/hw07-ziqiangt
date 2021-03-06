% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/f_set.R
\name{f_set}
\alias{f_set}
\title{sets factor's level order}
\usage{
f_set(x)
}
\arguments{
\item{x}{a factor.}
}
\value{
Returns a new verision of the input factor in
the order in which they appear in the data
An error is raised if # unique values != length
}
\description{
sets levels to the order in which they appear in the data
}
\examples{
f_set(factor(c("B", "A", "D"))) # Levels: B A D
}
