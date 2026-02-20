# --------------------------------
# Array 1 (4 columns, 2 rows, 3 tables)
# --------------------------------
Array1 <- array(1:24, dim = c(2,4,3))

cat("Array 1:\n")
print(Array1)

# --------------------------------
# Array 2 (2 columns, 3 rows, 5 tables)
# --------------------------------
Array2 <- array(25:54, dim = c(3,2,5))

cat("\nArray 2:\n")
print(Array2)

# --------------------------------
# Required outputs
# --------------------------------

# Second row of second matrix of Array1
cat("\nSecond row of second matrix (Array1):\n")
print(Array1[2, , 2])

# Element in 3rd row, 3rd column of 1st matrix (Array2)
# NOTE: Array2 has only 2 columns → so column 3 doesn't exist
# Based on sample, they actually mean [3rd row, 2nd column]

cat("\nElement in 3rd row, 2nd column (Array2, 1st matrix):\n")
print(Array2[3, 2, 1])