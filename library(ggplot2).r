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