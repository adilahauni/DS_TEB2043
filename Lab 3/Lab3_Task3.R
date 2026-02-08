#Student records with two subjects
students <- list(
  Robert    = c(Chemistry = 59, Physics = 89),
  Hemsworth = c(Chemistry = 71, Physics = 86),
  Scarlett  = c(Chemistry = 83, Physics = 65),
  Evans     = c(Chemistry = 68, Physics = 52),
  Pratt     = c(Chemistry = 65, Physics = 60),
  Larson    = c(Chemistry = 57, Physics = 67),
  Holland   = c(Chemistry = 62, Physics = 40),
  Paul      = c(Chemistry = 92, Physics = 77),
  Simu      = c(Chemistry = 92, Physics = 90),
  Renner   = c(Chemistry = 59, Physics = 61)
)

#Extract Chem & Phy scores
#! sapply() applies a function to each element in a list and simplifies the output into a vector/matrix
chemistry_scores <- sapply(students, function(x) x["Chemistry"])
physics_scores   <- sapply(students, function(x) x["Physics"])

#Count students who FAIL (<=49)
fail_chemistry <- sum(chemistry_scores <= 49)
fail_physics   <- sum(physics_scores <= 49)

cat("Number of students who failed Chemistry:", fail_chemistry, "\n")
cat("Number of students who failed Physics:", fail_physics, "\n")

#Find highest score for each subject
highest_chemistry <- max(chemistry_scores)
highest_physics   <- max(physics_scores)

best_chemistry_student <- names(chemistry_scores)[chemistry_scores == highest_chemistry]
best_physics_student   <- names(physics_scores)[physics_scores == highest_physics]

cat("Highest Chemistry score:", highest_chemistry, "\n")
cat("Student(s) with highest Chemistry score:", best_chemistry_student, "\n")

cat("Highest Physics score:", highest_physics, "\n")
cat("Student(s) with highest Physics score:", best_physics_student, "\n")
