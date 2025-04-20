library(ggplot2)
library(dplyr)
library(broom)
library(ggpubr)

# Load the dataset as a dataframe using a relative path
income_data <- read.csv("data/income.data.csv")

# View the first few rows of the dataframe
head(income_data)

# Check the structure of the dataframe
summary(income_data)

# Create histogram of happiness scores
hist(income_data$happiness)
# Create a scatter plot of happiness vs income
plot(happiness ~ income, data = income_data)

# Fit a linear regression model
model <- lm(happiness ~ income, data = income_data)
# Print the summary of the model
summary(model)
