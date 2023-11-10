#' @title   DataRange
#' @description  This function can compute the range of a column by using the column name from a dataset
#' @param data  A data frame that contains the interested numeric data under certain column
#' @param Col_name A character in form of "column name"
#' @return A vector contains two values, the minimum and maximum of the selected column
#' 
#' @example 
#' DataRange<-function(data=value1, Col_name=value2)
#' 
#' @export
DataRange <- function(data, Col_name) {
  if (Col_name %in% colnames(data)) {
    column <- data[[Col_name]]
    
    if (length(column) == 0) {
      # Handle an empty vector
      result_vector <- "Empty vector provided"
    } else {
      # Filter out non-numeric values (keep NA)
      valid_values <- column[is.na(column) | is.numeric(column)]
      
      if (length(valid_values) == 0) {
        # Handle the case where there are no valid numeric values
        result_vector <- "No valid numeric values in the column"
      } else {
        num_na <- sum(is.na(valid_values))
        range_value <- range(valid_values, na.rm = TRUE)  # Use na.rm to ignore NA values in range calculation
        
        result_vector <- c(paste("range=", paste(range_value, collapse=" to "), "number of NA=", num_na))
      }
    }
    
    return(result_vector)
  } else {
    stop("Column not found in the dataset")
  }
}
