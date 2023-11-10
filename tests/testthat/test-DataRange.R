#Test 1: if a numeric object is returned for valid inputs

test_that("Data_Range calculates range for vector of numeric data without NA", {
  # Create a sample data frame with a numeric column without NA values
  data_frame <- data.frame(data_vector = c(1, 2, 3, 4, 5))
  
  # Call the Data_Range function on the sample data frame
  result <- Data_Range(data_frame, "data_vector")
  
  # Define the expected result based on manual calculation
  expected_result <- "range= 1 to 5 number of NA= 0"
  
  # Check if the result matches the expected result
  expect_equal(result, expected_result)
})

#Test 2:Vector that has NA’s

test_that("Data_Range calculates range for vector of numeric data including NA", {
  # Create a sample data frame with a numeric column with NA values
  data_frame <- data.frame(data_vector = c(1, 2, NA, 4, NA))
  
  # Call the Data_Range function on the sample data frame
  result <- Data_Range(data_frame, "data_vector")
  
  # Define the corrected expected result, indicating that there are 2 NA values
  expected_result <- "range= 1 to 4 number of NA= 2"
  
  # Check if the result matches the corrected expected result
  expect_equal(result, expected_result)
})


#Test 3:Vector of length 0, like numeric(0)

test_that("Data_Range handles an empty vector correctly", {
  # Create an empty data frame with an empty numeric vector
  empty_data_frame <- data.frame(empty_vector = numeric(0))
  
  # Call the Data_Range function on the empty data frame
  result <- Data_Range(empty_data_frame, "empty_vector")
  
  # Define the expected result for an empty vector
  expected_result <- "Empty vector provided"
  
  # Check if the result matches the expected result
  expect_equal(result, expected_result)
})


