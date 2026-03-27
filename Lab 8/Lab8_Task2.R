# ============================================================
# LAB 8: Built-ins datasets & Data Visualization
# ============================================================

data(mtcars)

head(mtcars)

plot(mtcars$wt, mtcars$mpg,
     col = "blue",
     pch = 19,
     main = "Car Weight vs Fuel Efficiency",
     xlab = "Weight",
     ylab = "Miles per Gallon")