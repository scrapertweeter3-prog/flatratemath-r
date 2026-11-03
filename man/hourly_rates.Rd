\name{hourly_rates}
\alias{hourly_rates}
\title{Effective hourly rates implied by the two cost models}
\usage{
hourly_rates(hours_per_month = 160,
             salary_monthly = SENIOR_SWE_MONTHLY_USD,
             flat_monthly = FLAT_RATE_MONTHLY_USD)
}
\arguments{
\item{hours_per_month}{Billable hours per month in each model.}
\item{salary_monthly}{Fully loaded monthly cost of the hire, in dollars.}
\item{flat_monthly}{Flat-rate subscription monthly cost, in dollars.}
}
\value{
A named list with elements \code{hire_hourly} and \code{flat_hourly}.
}
\description{
Divides each model's monthly cost by the billable hours to expose the
effective hourly rate a buyer is paying under each option.
}
\examples{
hourly_rates(160)
}
