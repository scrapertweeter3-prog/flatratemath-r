\name{savings_table}
\alias{savings_table}
\title{Cumulative savings by month for a hiring-versus-subscription decision}
\usage{
savings_table(months = 12, salary_monthly = SENIOR_SWE_MONTHLY_USD,
              flat_monthly = FLAT_RATE_MONTHLY_USD)
}
\arguments{
\item{months}{Number of months to project (positive integer).}
\item{salary_monthly}{Fully loaded monthly cost of the hire, in dollars.}
\item{flat_monthly}{Flat-rate subscription monthly cost, in dollars.}
}
\value{
A data frame with columns \code{month}, \code{hire_cost},
\code{flat_cost}, and \code{saving} (cumulative dollars saved by the
flat rate).
}
\description{
Builds the month-by-month projection behind the annual figure: what
hiring costs so far, what the flat rate costs so far, and the running
gap between them.
}
\examples{
head(savings_table(6))
}
