# ============================================================
# LAB 8: Data Visualization
# ============================================================

# Load dataset
titanic <- read.csv("titanic_sorted.csv")

# Preview
head(titanic)

#Age vs Survival
boxplot(Age ~ Survived,
        data = titanic,
        col = c("red", "green"),
        names = c("Died", "Survived"),
        main = "Age Distribution by Survival",
        xlab = "Survival Status",
        ylab = "Age")