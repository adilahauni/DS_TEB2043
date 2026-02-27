# Create data frames
df <- data.frame(
  name = c("Anastasia","Dima","Michael","Matthew","Laura", "Kevin", "Jonas", "Emily"),
  score = c(12.5, 9.0, 16.5, 12.0, 9.0, 8.0, 19.0, 14.5),
  attempts = c(1, 3, 2, 3, 2, 1, 2, 1),
  qualify = c("yes", "no", "yes", "no", "no", "no", "yes", "yes")
  )

#---------------------------------------
# Display
#---------------------------------------

# Structure
str(df)

# Summary
df$qualify <- as.factor(df$qualify) # Categorical summary for qualify column
summary(df)

# Number of rows
nrow(df)

# Number of columns
ncol(df)
