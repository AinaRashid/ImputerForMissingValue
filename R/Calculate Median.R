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

