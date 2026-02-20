num <- as.numeric(readline("Input an integer: "))
temp <- num
sum <- 0

# Convert to character FIRST
n <- nchar(as.character(num))

while (temp > 0) {
  digit <- temp %% 10
  sum <- sum + digit^n
  temp <- temp %/% 10
}

if (sum == num) {
  cat(num, "is an Armstrong number.\n")
} else {
  cat(num, "is not an Armstrong number.\n")
}
