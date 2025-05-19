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

par(mfrow=c(2,2))
plot(model)

# Create a ggplot scatter plot of happiness vs income
income.graph <- ggplot(income_data, aes(x = income, y = happiness)) +
                geom_point()
income.graph

income.graph <- income.graph + geom_smooth(method="lm", col="black")

income.graph

income.graph <- income.graph +
  stat_regline_equation(label.x = 3, label.y = 7)

income.graph

income.graph +
  theme_bw() +
  labs(title = "Reported happiness as a function of income",
      x = "Income (x$10,000)",
      y = "Happiness score (0 to 10)")
