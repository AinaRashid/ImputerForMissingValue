#' Replace Missing Values with Column Medians
#'
#' Replaces missing values in each numeric column with that column's median.
#'
#' @param data A data frame with potentially missing values.
#' @return A data frame with missing values replaced by medians.
#' @export
replace_missing_with_median <- function(data) {
  medians <- calculate_median(data)

  for (col in names(data)) {
    if (is.numeric(data[[col]])) {
      data[[col]][is.na(data[[col]])] <- medians[col]
    }
  }

  return(data)
}
