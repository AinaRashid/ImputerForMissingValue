devtools::document()
rm(list = c("calculate_median", "detect_missing_values",
            "replace_missing_with_median"))
devtools::build()

devtools::install()
library(MissingValueImputer)

detect_missing_values(airquality)
cleaned_airquality <- replace_missing_with_median(airquality)
print(cleaned_airquality)
roxygen2::roxygenise("C:/Users/Lenovo/OneDrive/Desktop/CDCS111/STA334/MissingValueImputer
")

install.packages("roxygen2")
roxygen2::roxygenise()
devtools::check()

devtools::check()
usethis::use_mit_license()
importFrom("stats", "median")
install.packages("stats")
devtools::check()
devtools::build()
devtools::document()
devtools::install()
devtools::release()
3
devtools ::spell_check()
1
