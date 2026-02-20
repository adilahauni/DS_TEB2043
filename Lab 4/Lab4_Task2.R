# --------------------------------
# Given vector
# --------------------------------
V1 <- c(2,3,1,5,4,6,8,7,9)

# --------------------------------
# Create Matrix-1 (3x3)
# --------------------------------
Matrix1 <- matrix(V1, nrow = 3, ncol = 3)

# Name rows and columns
rownames(Matrix1) <- c("R1", "R2", "R3")
colnames(Matrix1) <- c("C1", "C2", "C3")

cat("Matrix 1:\n")
print(Matrix1)

# --------------------------------
# Transpose → Matrix-2
# --------------------------------
Matrix2 <- t(Matrix1)

cat("\nMatrix 2 (Transpose):\n")
print(Matrix2)

# --------------------------------
# Operations
# --------------------------------
cat("\nAddition:\n")
print(Matrix1 + Matrix2)

cat("\nSubtraction:\n")
print(Matrix1 - Matrix2)

cat("\nMultiplication:\n")
print(Matrix1 * Matrix2)

cat("\nDivision:\n")
print(Matrix1 / Matrix2)