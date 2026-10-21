\name{annual_saving}
\alias{annual_saving}
\title{Annual dollar gap between the fully loaded hire and the flat rate}
\usage{
annual_saving()
}
\value{
A single number: the yearly saving in dollars (159540 at the package
rates).
}
\description{
Multiplies the monthly difference between
\code{SENIOR_SWE_MONTHLY_USD} and \code{FLAT_RATE_MONTHLY_USD} by twelve.
}
\examples{
annual_saving()
}
