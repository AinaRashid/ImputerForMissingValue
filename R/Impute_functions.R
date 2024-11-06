#' Detect Missing Values in Each Column
#'
#' Counts the missing values in each column of a data frame.
#'
#' @param data A data frame.
#' @return A named vector with the count of missing values in each column with NAs.
#' @export
detect_missing_values <- function(data) {
  missing_counts <- numeric(ncol(data))
  names(missing_counts) <- colnames(data)

  for (i in 1:ncol(data)) {
    missing_counts[i] <- sum(is.na(data[[i]]))
  }

  missing_counts <- missing_counts[missing_counts > 0]
  return(missing_counts)
}

#' Calculate Median for Each Column
#'
#' Calculates the median for each numeric column in a data frame, ignoring missing values.
#'
#' @param data A data frame.
#' @return A named vector of median values for each numeric column.
#' @export
calculate_median <- function(data) {
  sapply(data, function(x) {
    if (is.numeric(x)) median(x, na.rm = TRUE) else NA
  })
}

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

