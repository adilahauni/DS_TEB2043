# ============================================================
# LAB 10: Linear Regression & KNN
# ============================================================


# ------------------------------------------------------------
# ACTIVITY 1: Linear Regression using Theoph dataset
# ------------------------------------------------------------

# Load dataset
data(Theoph)

# Preview data
head(Theoph)


# ------------------------------------------------------------
# Create Linear Regression Model
# Predict Dose based on Weight
# ------------------------------------------------------------
model <- lm(Dose ~ Wt, data = Theoph)

# Display model
print(model)

# Summary of model
summary(model)


# ------------------------------------------------------------
# Visualize Linear Regression
# ------------------------------------------------------------
plot(Theoph$Wt, Theoph$Dose,
     col = "blue",
     main = "Dose vs Weight",
     xlab = "Weight (kg)",
     ylab = "Dose")

abline(model, col = "red")


# ------------------------------------------------------------
# Predict Dose for new weights
# ------------------------------------------------------------
new_weight <- data.frame(Wt = c(90, 95, 100))

prediction <- predict(model, new_weight)

print(prediction)


