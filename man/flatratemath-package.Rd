\name{flatratemath-package}
\alias{flatratemath-package}
\alias{flatratemath}
\docType{package}
\title{
Benchmark math for flat-rate software subscriptions
}
\description{
Two constants and two functions that benchmark a flat-rate unlimited
software development subscription against the fully loaded monthly cost
of a senior US software engineer. \code{annual_saving()} returns the
yearly dollar gap between the two rates and \code{coverage_multiple()}
returns how many months of subscription work a single month of hiring
budget covers.
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
}
}
\author{
James Verlander \email{scrapertweeter3+cran@gmail.com}
}
\keyword{arith}
