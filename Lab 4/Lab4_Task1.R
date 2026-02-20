# --------------------------------
# Given data
# --------------------------------
age <- c(55,57,56,52,51,59,58,53,59,55,60,60,60,60,52,
         55,56,51,60,52,54,56,52,57,54,56,58,53,53,50,
         55,51,57,60,57,55,51,50,57,58)

# --------------------------------
# Count frequency of each age
# --------------------------------
age_factor <- factor(age)
age_count <- table(age_factor)

cat("Total no. of staff:\n")
print(age_count)

# --------------------------------
# Divide ages into 5 ranges
# --------------------------------
age_range <- cut(
  age,
  breaks = c(50, 52, 54, 56, 58, 60),
  labels = c("50–52", "52–54", "54–56", "56–58", "58–60"),
  include.lowest = TRUE,
  right = TRUE
)

# Count frequency in each range
range_count <- table(age_range)

# Display result
cat("\nFrequency of staff by age range:\n")
print(range_count)