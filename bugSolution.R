```r
# Improved subsetting function that handles missing column names gracefully

safe_subset <- function(df, cols) {
  existing_cols <- intersect(cols, colnames(df))
  if (length(existing_cols) == 0) {
    warning("None of the specified columns exist in the data frame.")
    return(NULL) 
  } else if (length(existing_cols) < length(cols)) {
    warning("Some specified columns do not exist in the data frame.")
  }
  df[, existing_cols]
}

df <- data.frame(A = 1:3, B = 4:6, C = 7:9)
cols_to_select <- c("A", "B", "D")

subset_df <- safe_subset(df, cols_to_select)
print(subset_df) # Correctly subsets only existing columns, with warnings
```