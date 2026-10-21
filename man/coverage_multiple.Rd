\name{coverage_multiple}
\alias{coverage_multiple}
\title{Months of flat-rate work that one month of hiring budget covers}
\usage{
coverage_multiple()
}
\value{
A single number: the coverage multiple (about 3.66 at the package
rates).
}
\description{
Divides \code{SENIOR_SWE_MONTHLY_USD} by \code{FLAT_RATE_MONTHLY_USD}.
}
\examples{
round(coverage_multiple(), 2)
}
