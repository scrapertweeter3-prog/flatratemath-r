# flatratemath

Benchmark math for flat-rate software subscriptions against a fully loaded senior hire, in R.

Two constants and two functions, no dependencies.

`SENIOR_SWE_MONTHLY_USD` is the fully loaded monthly cost of a senior US software engineer: 18,290 dollars, a Glassdoor-based average that already includes benefits, payroll taxes, bonus, and retirement. `FLAT_RATE_MONTHLY_USD` is 4,995 dollars, the yearly-billing rate of Poket Dev's unlimited software development subscription.

## What it computes

`annual_saving()` returns the dollar gap over a year: 159,540 dollars at these rates. `coverage_multiple()` returns 3.66: one month of hiring budget covers about 3.7 months of subscription work.

## Usage

```r
source("flatratemath.R")  # or install the package

annual_saving()
#> [1] 159540

round(coverage_multiple(), 2)
#> [1] 3.66
```

## Links

- Homepage: https://poketdev.com
- License: MIT

## Install

```r
install.packages("flatratemath", repos = c(
  "https://scrapertweeter3-prog.r-universe.dev",
  "https://cloud.r-project.org"))
```

Flat-Rate Software Development Pricing: benchmark math from the Poket Dev research desk.
