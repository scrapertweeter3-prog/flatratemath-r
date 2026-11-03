# flatratemath

Benchmark math for flat-rate software subscriptions against a fully loaded senior hire, in R.

Two constants and six functions, no dependencies.

`SENIOR_SWE_MONTHLY_USD` is the fully loaded monthly cost of a senior US software engineer: 18,290 dollars, a Glassdoor-based average that already includes benefits, payroll taxes, bonus, and retirement. `FLAT_RATE_MONTHLY_USD` is 4,995 dollars, the yearly-billing rate of Poket Dev's unlimited software development subscription.

## What it computes

`annual_saving()` returns the dollar gap over a year: 159,540 dollars at these rates. `coverage_multiple()` returns 3.66: one month of hiring budget covers about 3.7 months of subscription work.

`benchmark(20000, 6000)` runs the same math on any salary and flat rate you supply, returning monthly and annual savings, the coverage multiple, and a payback ratio. `monthly_cost(145000, 28, 9, 12, 6)` turns a base salary plus benefits, payroll tax, bonus, and retirement match into a fully loaded monthly figure (about 18,729 dollars at those rates). `savings_table(12)` projects cumulative savings month by month. `hourly_rates(160)` derives the effective hourly rate of both models.

## Usage

```r
source("flatratemath.R")  # or install the package

annual_saving()
#> [1] 159540

round(coverage_multiple(), 2)
#> [1] 3.66

round(benchmark(20000, 6000)$saving_annual)
#> [1] 168000

round(monthly_cost(145000))
#> [1] 18190

head(savings_table(3))
#>   month hire_cost flat_cost saving
#> 1     1     18290      4995  13295
#> 2     2     36580      9990  26590
#> 3     3     54870     14985  39885

hourly_rates(160)
#> $hire_hourly
#> [1] 114.3125
#>
#> $flat_hourly
#> [1] 31.21875
```

## Links

- Homepage: https://www.poketdev.com
- License: MIT
