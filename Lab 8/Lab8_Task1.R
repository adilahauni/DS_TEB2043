# ============================================================
# LAB 8: Data Visualization
# ============================================================


# Load dataset
titanic <- read.csv("titanic_sorted.csv")

# Preview
head(titanic)

# Count survival
survival_count <- table(titanic$Survived)

# Plot bar chart
barplot(survival_count,
        col = c("red", "green"),
        names.arg = c("Died", "Survived"),
        main = "Titanic Survival Count",
        xlab = "Status",
        ylab = "Number of Passengers")