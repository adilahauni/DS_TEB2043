# ============================================================
# LAB 10: Linear Regression & KNN
# ============================================================

# ============================================================
# ACTIVITY 2: KNN using ChickWeight dataset
# ============================================================

# Install packages (run once only)
# install.packages("caTools")
# install.packages("class")

library(caTools)
library(class)


# ------------------------------------------------------------
# Load dataset
# ------------------------------------------------------------
data(ChickWeight)

# Preview
head(ChickWeight)


# ------------------------------------------------------------
# Convert Diet to factor (important for classification)
# ------------------------------------------------------------
ChickWeight$Diet <- as.factor(ChickWeight$Diet)


# ------------------------------------------------------------
# Split data into training (70%) and testing (30%)
# ------------------------------------------------------------
split <- sample.split(ChickWeight$Diet, SplitRatio = 0.7)

train <- subset(ChickWeight, split == TRUE)
test  <- subset(ChickWeight, split == FALSE)


# ------------------------------------------------------------
# Feature Scaling (use numeric columns only)
# ------------------------------------------------------------
train_scale <- scale(train[, c("weight", "Time")])
test_scale  <- scale(test[, c("weight", "Time")])


# ------------------------------------------------------------
# Test different K values to find optimal K
# ------------------------------------------------------------

k_values <- c(1, 3, 5, 7, 9)
accuracy <- c()

for(k in k_values) {
  
  model_knn <- knn(train = train_scale,
                   test = test_scale,
                   cl = train$Diet,
                   k = k)
  
  acc <- mean(model_knn == test$Diet)
  accuracy <- c(accuracy, acc)
  
  print(paste("K =", k, "Accuracy =", acc))
}

# Best K
best_k <- k_values[which.max(accuracy)]
print(paste("Best K value is:", best_k))


# ------------------------------------------------------------
# Final Model using Best K
# ------------------------------------------------------------
final_knn <- knn(train = train_scale,
                 test = test_scale,
                 cl = train$Diet,
                 k = best_k)


# ------------------------------------------------------------
# Confusion Matrix
# ------------------------------------------------------------
cm <- table(test$Diet, final_knn)
print(cm)


# ------------------------------------------------------------
# Final Accuracy
# ------------------------------------------------------------
final_accuracy <- mean(final_knn == test$Diet)
print(paste("Final Accuracy =", final_accuracy))