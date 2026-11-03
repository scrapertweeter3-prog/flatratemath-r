\name{benchmark}
\alias{benchmark}
\title{Benchmark an arbitrary salary against an arbitrary flat rate}
\usage{
benchmark(salary_monthly = SENIOR_SWE_MONTHLY_USD,
          flat_monthly = FLAT_RATE_MONTHLY_USD)
}
\arguments{
\item{salary_monthly}{Fully loaded monthly cost of the hire, in dollars.}
\item{flat_monthly}{Flat-rate subscription monthly cost, in dollars.}
}
\value{
A named list with elements \code{saving_monthly}, \code{saving_annual},
\code{coverage_multiple}, and \code{payback_months} (the share of one
month of hiring budget that a single month of subscription work costs).
}
\description{
Runs the full benchmark for any pair of rates instead of the built-in
package constants.
}
\examples{
b <- benchmark(20000, 6000)
round(b$saving_annual)
round(b$coverage_multiple, 2)
}
