\name{monthly_cost}
\alias{monthly_cost}
\title{Fully loaded monthly cost from a base salary plus burden rates}
\usage{
monthly_cost(base_salary, benefits_pct = 28, payroll_tax_pct = 9,
             bonus_pct = 12, retirement_match_pct = 6)
}
\arguments{
\item{base_salary}{Annual base salary in dollars.}
\item{benefits_pct}{Benefits load as a percent of base salary.}
\item{payroll_tax_pct}{Employer payroll tax as a percent of base salary.}
\item{bonus_pct}{Annual bonus as a percent of base salary.}
\item{retirement_match_pct}{Employer retirement match as a percent of
base salary.}
}
\value{
A single number: the fully loaded monthly cost in dollars.
}
\description{
Applies the four burden rates to a base salary and divides by twelve.
The defaults mirror the burden already baked into
\code{SENIOR_SWE_MONTHLY_USD}.
}
\examples{
round(monthly_cost(145000, 28, 9, 12, 6))
}
