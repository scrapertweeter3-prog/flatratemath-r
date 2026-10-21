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
