#' Detect Missing Values
#'
#' @param data A dataframe
#' @return A named numeric vector with counts of missing values per column
#' @examples
#' detect_missing_values(airquality)
detect_missing_values <- function(data) {
  missing_counts <- numeric(ncol(data))
  names(missing_counts) <- colnames(data)

  for (i in 1:ncol(data)){
    missing_counts[i] <- sum(is.na(data[[i]]))
  }

  missing_counts <- missing_counts[missing_counts > 0]
  return(missing_counts)
}

