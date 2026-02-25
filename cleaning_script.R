# ============================================================
# Data Cleaning Script (R)
# Purpose: Clean student dataset from Excel
# ============================================================


# ------------------------------------------------------------
# 1. Load Required Libraries
# ------------------------------------------------------------
library(dplyr)
library(readxl)
library(stringr)


# ------------------------------------------------------------
# 2. Read Raw Excel File
#    (File contains pipe-separated values in one column)
# ------------------------------------------------------------
  df_raw <- read_excel("Unclean Dataset.xlsx")

# Preview raw data (important check - DO NOT REMOVE)
head(df_raw)

# ------------------------------------------------------------
# 3. Extract First Column and Split by Pipe "|"
#    Because Excel stored entire row in a single column
# ------------------------------------------------------------
raw_data <- df_raw[[1]]

split_data <- str_split(raw_data, "\\|")

df <- as.data.frame(do.call(rbind, split_data))


# ------------------------------------------------------------
# 4. Clean Whitespace and Remove Empty Columns
# ------------------------------------------------------------
# Remove leading/trailing spaces
df[] <- lapply(df, str_trim)

# Remove completely empty columns
df <- df[, colSums(is.na(df) | df == "") < nrow(df)]


# ------------------------------------------------------------
# 5. Assign Proper Column Names
# ------------------------------------------------------------
colnames(df) <- c(
  "Student_ID",
  "First_Name",
  "Last_Name",
  "Age",
  "Gender",
  "Course",
  "Enrollment_Date",
  "Total_Payments"
)

# Remove duplicated header row
df <- df[-1, ]


# ------------------------------------------------------------
# 6. Replace Text "NA" with Real NA
# ------------------------------------------------------------
df[df == "NA"] <- NA


# ------------------------------------------------------------
# 7. Convert Data Types
# ------------------------------------------------------------
# Convert Age to numeric
df$Age <- as.numeric(df$Age)

# Remove "$" and convert Total_Payments to numeric
df$Total_Payments <- as.numeric(
  gsub("$", "", df$Total_Payments, fixed = TRUE)
)

# Convert Enrollment_Date to Date format
df$Enrollment_Date <- as.Date(df$Enrollment_Date)


# ------------------------------------------------------------
# 8. Remove Duplicate Rows
# ------------------------------------------------------------
df <- distinct(df)


# ------------------------------------------------------------
# 9. Remove Rows with Missing Values
# ------------------------------------------------------------
df <- df[df$Student_ID != "" & !is.na(df$Student_ID), ] # Remove rows where Student_ID is empty or NA

df <- na.omit(df) # Remove remaining rows with missing values

# ------------------------------------------------------------
# 10. Save Cleaned Dataset
# ------------------------------------------------------------
write.csv(df, "Clean_Dataset.csv", row.names = FALSE)

cat("Data cleaning completed successfully!\n")


# ============================================================
# 11. Validation & Checking Section (IMPORTANT!!)
# ============================================================

# Check rows where Age is NA
df[is.na(df$Age), ]

# Check if any NA exists in entire dataset
any(is.na(df))

# Check working directory (where file is saved)
getwd()

# Count total NA values
sum(is.na(df))

# Check if any row has First_Name equal to "NA"
df[df$First_Name == "NA", ]