set.seed(123)  # For reproducibility
n <- 100
user_id <- 1:n
credit <- round(runif(n, min = 500, max = 10000), 2)
gender <- sample(c("Male", "Female"), n, replace = TRUE)
city <- sample(c("Rome", "Milan", "Naples", "Turin", "Palermo"), n, replace = TRUE)

# Create a data frame
data <- data.frame(user_id, credit, gender, city)

write.csv(data, file = "user_data.csv", row.names = FALSE)

# Read the CSV file
user_data <- read.csv("user_data.csv")

# Display the imported data
print(user_data)

ls()

