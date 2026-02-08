# Get user input
name <- readline("Enter your name: ")
phone <- readline("Enter your phone number: ")

# Convert name to uppercase
name_upper <- toupper(name)

#Extract phone number
first3 <- substr(phone, 1, 3) #Extracts characters from position 8 to 11.
last4 <- substr(phone, nchar(phone)-3, nchar(phone))

# Display masked phone number
cat("Hi,", name_upper, ". A verification code has been sent to", first3, "-xxxxx", last4, "\n")