```r
# This code attempts to subset a data frame using a character vector of column names,
# but it fails due to type coercion issues if any column name is not found.

df <- data.frame(A = 1:3, B = 4:6, C = 7:9)
cols_to_select <- c("A", "B", "D") # 'D' does not exist

subset_df <- df[, cols_to_select]
print(subset_df) # This will produce a warning and unexpected results
```