#Input vector
scores <- c(33, 24, 54, 94, 16, 89, 60, 6, 77, 61,
            13, 44, 26, 24, 73, 73, 90, 39, 90, 54) 

#Grade ranges
grade_A <- scores >= 90 & scores <= 100
grade_B <- scores >= 80 & scores <= 89
grade_C <- scores >= 70 & scores <= 79
grade_D <- scores >= 60 & scores <= 69
grade_E <- scores >= 50 & scores <= 59
grade_F <- scores <= 49

#Count students in each grade
cat("Number of students by grade:\n")
cat("Grade A:", sum(grade_A), "\n")
cat("Grade B:", sum(grade_B), "\n")
cat("Grade C:", sum(grade_C), "\n")
cat("Grade D:", sum(grade_D), "\n")
cat("Grade E:", sum(grade_E), "\n")
cat("Grade F:", sum(grade_F), "\n")

#Pass/fail check (>49)
status <- ifelse(scores > 49, "Pass", "Fail")

cat("\nPass / Fail status:\n")
print(status)