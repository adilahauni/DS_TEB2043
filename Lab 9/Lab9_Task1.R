# ============================================================
# LAB 9: Correlation Analysis & Normalization
# ============================================================


# ------------------------------------------------------------
# ACTIVITY 1: ToothGrowth Dataset (Correlation + Heatmap)
# ------------------------------------------------------------

# Load built-in dataset
data(ToothGrowth)

# Preview dataset
head(ToothGrowth)


# ------------------------------------------------------------
# Select only numeric columns (correlation works on numeric data)
# ------------------------------------------------------------
tg <- ToothGrowth[, c("len", "dose")]


# ------------------------------------------------------------
# Compute correlation matrix
# ------------------------------------------------------------
correlation_result <- cor(tg)

# Display correlation result
print(correlation_result)


# ------------------------------------------------------------
# Plot correlation heatmap (base R)
# ------------------------------------------------------------
heatmap(correlation_result,
        col = heat.colors(10),
        main = "Correlation Heatmap - ToothGrowth")



# ============================================================
# ACTIVITY 2: mtcars Dataset (Normalization)
# ============================================================

# Load dataset
data(mtcars)

# Preview dataset
head(mtcars)


# ------------------------------------------------------------
# Select numeric variable (mpg)
# ------------------------------------------------------------
x <- mtcars$mpg


# ------------------------------------------------------------
# METHOD 1: Log Transformation
# Reduces skewness and compresses large values
# ------------------------------------------------------------
log_data <- log(x)

# Display summary
summary(log_data)



# ------------------------------------------------------------
# METHOD 2: Standard Scaling (Z-score normalization)
# Converts data to mean = 0 and standard deviation = 1
# ------------------------------------------------------------
scale_data <- scale(x)

# Display summary
summary(scale_data)



# ------------------------------------------------------------
# METHOD 3: Min-Max Scaling
# Converts data into range [0,1]
# ------------------------------------------------------------
minmax_data <- (x - min(x)) / (max(x) - min(x))

# Display summary
summary(minmax_data)



# ------------------------------------------------------------
# Compare all results (raw vs normalized)
# ------------------------------------------------------------
summary(x)             # Original data
summary(log_data)      # Log transformation
summary(scale_data)    # Standard scaling
summary(minmax_data)   # Min-max scaling