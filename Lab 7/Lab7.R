#-------------------------------------------------
# Install and load libraries
#-------------------------------------------------
#install.packages("dplyr")
#install.packages("xlsx")

library(dplyr)
library(xlsx)

getwd()
list.files()

# Import dataset
titanic <- read.csv("titanic.csv")
View(titanic)

# Identifying NA/empty cells in data frame
sum(is.na(titanic))
which(is.na(titanic))

# NA count for each column
print(sapply(titanic, function(x) sum(is.na(x))))

#-------------------------------------
# Clean the dataset
#-------------------------------------
dim(titanic)

titanic_cleaned <- na.omit(titanic)

dim(titanic_cleaned)


#------------------------------------
# Check column names
#------------------------------------
names(titanic_cleaned)

#------------------------------------
# Filtering the data
#------------------------------------
# Female passengers
female_passengers <- filter(titanic_cleaned, Sex == "female")

# Passengers with fare > 100
highfare_passengers <- filter(titanic_cleaned, Fare > 100)

# First class passengers
firstclass_passengers <- filter(titanic_cleaned, Pclass == 1)

#------------------------------------
# Multiple condition filtering
#------------------------------------
# Female passengers who survived
female_survived <- titanic_cleaned %>%
  filter(Sex == "female", Survived == 1)

# Third class passengers who survived
thirdclass_survived <- titanic_cleaned %>%
  filter(Pclass == 3, Survived == 1)

# Female passengers with high fare
female_highfare <- titanic_cleaned %>%
  filter(Sex == "female", Fare > 100)

# Passengers who embarked from Cherbourg
cherbourg_survivors <- titanic_cleaned %>%
  filter(Embarked == "C", Survived == 1)

#-------------------------------------
# Insights
#--------------------------------------------
# Survival count by gender
table(titanic_cleaned$Sex, titanic_cleaned$Survived)

# Survival count by passenger class
table(titanic_cleaned$Pclass, titanic_cleaned$Survived)

# Passenger distribution by embark port
table(titanic_cleaned$Embarked)

#-----------------------------------------------
# Sorting data
#-----------------------------------------------
# Sort by fare ascending
titanic_sortbyfare <- arrange(titanic_cleaned, Fare)

# Sort by fare descending
titanic_sortbyfare_desc <- arrange(titanic_cleaned, desc(Fare))

#------------------------------------------------
# Export
write.csv(titanic_sortbyfare_desc, "titanic_sorted.csv")

