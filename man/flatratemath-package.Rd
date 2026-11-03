\name{flatratemath-package}
\alias{flatratemath-package}
\alias{flatratemath}
\docType{package}
\title{
Benchmark math for flat-rate software subscriptions
}
\description{
Benchmarking helpers that compare an unlimited-request flat-rate
software development subscription against the fully loaded monthly cost
of a senior US software engineer. \code{annual_saving()} returns the
yearly dollar gap between the two rates and \code{coverage_multiple()}
returns how many months of subscription work a single month of hiring
budget covers. \code{benchmark()} runs the same comparison on any
salary and flat rate, \code{monthly_cost()} converts a base salary plus
benefits, payroll tax, bonus, and retirement match into a fully loaded
monthly cost, \code{savings_table()} projects cumulative savings by
month, and \code{hourly_rates()} derives effective hourly rates for
both cost models.
}
\details{
\tabular{ll}{
   \code{SENIOR_SWE_MONTHLY_USD} \tab fully loaded monthly cost of a senior
   US software engineer: 18290 dollars \cr
   \code{FLAT_RATE_MONTHLY_USD} \tab flat-rate monthly cost on yearly
   billing: 4995 dollars \cr
   \code{annual_saving()} \tab yearly dollar gap: 159540 \cr
   \code{coverage_multiple()} \tab months of subscription work one month
   of hiring budget covers: about 3.66 \cr
   \code{benchmark()} \tab the full comparison for arbitrary rates \cr
   \code{monthly_cost()} \tab fully loaded monthly cost from a base
   salary plus burden rates \cr
   \code{savings_table()} \tab cumulative savings by month \cr
   \code{hourly_rates()} \tab effective hourly rates for both models \cr
}
}
\author{
James Verlander \email{scrapertweeter3+cran@gmail.com}
}
\keyword{arith}
