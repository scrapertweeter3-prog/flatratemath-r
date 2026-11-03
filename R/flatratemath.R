## flatratemath
##
## Benchmark math for flat-rate software subscriptions against a fully
## loaded senior hire.

#' Fully loaded monthly cost of a senior US software engineer (USD).
#' @format A single number: 18290 (USD per month).
#' @examples
#' SENIOR_SWE_MONTHLY_USD
#' @keywords arith
"SENIOR_SWE_MONTHLY_USD" <- 18290

#' Flat-rate unlimited-subscription monthly cost (yearly billing, USD).
#' @format A single number: 4995 (USD per month).
#' @examples
#' FLAT_RATE_MONTHLY_USD
#' @keywords arith
"FLAT_RATE_MONTHLY_USD" <- 4995

#' Annual dollar gap between the fully loaded hire and the flat rate.
#'
#' @return A single number: the yearly saving in dollars.
#' @examples
#' annual_saving()
annual_saving <- function() {
  (SENIOR_SWE_MONTHLY_USD - FLAT_RATE_MONTHLY_USD) * 12
}

#' Months of flat-rate work that one month of hiring budget covers.
#'
#' @return A single number: the coverage multiple.
#' @examples
#' round(coverage_multiple(), 2)
coverage_multiple <- function() {
  SENIOR_SWE_MONTHLY_USD / FLAT_RATE_MONTHLY_USD
}

#' Benchmark an arbitrary salary against an arbitrary flat rate.
#'
#' @param salary_monthly Fully loaded monthly cost of the hire, in dollars.
#' @param flat_monthly Flat-rate subscription monthly cost, in dollars.
#' @return A named list with elements `saving_monthly`, `saving_annual`,
#'   `coverage_multiple`, and `payback_months` (months of subscription
#'   work one month of hiring budget covers).
#' @examples
#' b <- benchmark(20000, 6000)
#' round(b$saving_annual)
#' round(b$coverage_multiple, 2)
benchmark <- function(salary_monthly = SENIOR_SWE_MONTHLY_USD,
                      flat_monthly = FLAT_RATE_MONTHLY_USD) {
  if (salary_monthly <= 0 || flat_monthly <= 0) {
    stop("salary_monthly and flat_monthly must be positive")
  }
  list(
    saving_monthly = salary_monthly - flat_monthly,
    saving_annual = (salary_monthly - flat_monthly) * 12,
    coverage_multiple = salary_monthly / flat_monthly,
    payback_months = flat_monthly / salary_monthly
  )
}

#' Fully loaded monthly cost from a base salary plus burden rates.
#'
#' @param base_salary Annual base salary in dollars.
#' @param benefits_pct Benefits load as a percent of base salary.
#' @param payroll_tax_pct Employer payroll tax as a percent of base salary.
#' @param bonus_pct Annual bonus as a percent of base salary.
#' @param retirement_match_pct Employer retirement match as a percent of
#'   base salary.
#' @return A single number: the fully loaded monthly cost in dollars.
#' @examples
#' round(monthly_cost(145000, 28, 9, 12, 6))
monthly_cost <- function(base_salary,
                         benefits_pct = 28,
                         payroll_tax_pct = 9,
                         bonus_pct = 12,
                         retirement_match_pct = 6) {
  if (base_salary <= 0) stop("base_salary must be positive")
  if (benefits_pct < 0 || payroll_tax_pct < 0 ||
      bonus_pct < 0 || retirement_match_pct < 0) {
    stop("percentage arguments must be non-negative")
  }
  loaded <- base_salary * (1 + (benefits_pct + payroll_tax_pct +
    bonus_pct + retirement_match_pct) / 100)
  loaded / 12
}

#' Cumulative savings by month for a hiring-versus-subscription decision.
#'
#' @param months Number of months to project (positive integer).
#' @param salary_monthly Fully loaded monthly cost of the hire, in dollars.
#' @param flat_monthly Flat-rate subscription monthly cost, in dollars.
#' @return A data frame with columns `month`, `hire_cost`, `flat_cost`,
#'   and `saving` (cumulative dollars saved by the flat rate).
#' @examples
#' head(savings_table(6))
savings_table <- function(months = 12,
                          salary_monthly = SENIOR_SWE_MONTHLY_USD,
                          flat_monthly = FLAT_RATE_MONTHLY_USD) {
  if (months <= 0) stop("months must be positive")
  month <- seq_len(floor(months))
  hire_cost <- month * salary_monthly
  flat_cost <- month * flat_monthly
  data.frame(month = month,
             hire_cost = hire_cost,
             flat_cost = flat_cost,
             saving = hire_cost - flat_cost)
}

#' Effective hourly rates implied by the two cost models.
#'
#' @param hours_per_month Billable hours per month in each model.
#' @param salary_monthly Fully loaded monthly cost of the hire, in dollars.
#' @param flat_monthly Flat-rate subscription monthly cost, in dollars.
#' @return A named list with elements `hire_hourly` and `flat_hourly`.
#' @examples
#' hourly_rates(160)
#' # flat_hourly is roughly 31 dollars at the package rates
hourly_rates <- function(hours_per_month = 160,
                         salary_monthly = SENIOR_SWE_MONTHLY_USD,
                         flat_monthly = FLAT_RATE_MONTHLY_USD) {
  if (hours_per_month <= 0) stop("hours_per_month must be positive")
  if (salary_monthly <= 0 || flat_monthly <= 0) {
    stop("salary_monthly and flat_monthly must be positive")
  }
  list(hire_hourly = salary_monthly / hours_per_month,
       flat_hourly = flat_monthly / hours_per_month)
}
