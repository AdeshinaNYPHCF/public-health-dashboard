

getwd()
df = read.csv("C:\\Users\\AdeBello\\Documents\\disease.csv")
str(df)
attach(df)

library(Matrix)
# install.packages("lme4")
# install.packages("Matrix")


# Load required libraries
library(readxl)  # For reading Excel files
library(lme4)    # For fitting linear mixed-effects models
library(Matrix) 
# Step 2: Fit linear mixed-effects model
fit_lifeexp <- lmer(Life_expectancy ~  Gender + Race  + Specified_age +(1 | Specified_age ),
  data = df)

# Step 3: Print summary of the model
summary(fit_lifeexp)

library(MASS)

crab_nbin <- glm.nb(Life_expectancy ~ Gender + Race  + Specified_age, data = df)

summary(crab_nbin)


library(tidyverse)
library(MASS)
library(tidyr)
library(VGAM)
df1 = spread(df, Life_expectancy, Race)
df1




# Load necessary libraries
library(dplyr)
library(ggplot2)
library(car)

# Descriptive Statistics
summary(df)



# ANOVA
anova_result <- aov(Life_expectancy  ~ Gender + Race  + Specified_age, data = df)
summary(anova_result)

# Linear Regression Analysis
linear_model <- lm(Life_expectancy  ~ Year+Gender + Race  + Specified_age, data = df)
summary(linear_model)

# Chi-Square Test
chi_square_result <- chisq.test(table(df$Specified_age, df$Race))
chi_square_result


# Make sure to load the necessary packages
library(ggplot2)

# Assuming your data frame is named 'df' and it contains columns 'Race', 'Life_expectancy', and 'Gender'

# Create the comparative plot using ggplot2
comparative_plot <- ggplot(df, aes(x = Gender, y = Life_expectancy, color = Race)) +
  geom_line() +
  labs(x = "Race", y = "Life Expectancy", title = "Comparison of Life Expectancy Trends by Gender")

# Display the plot
print(comparative_plot)
# Load the necessary packages
library(ggplot2)

# Assuming your data frame is named 'df' and it contains columns 'Race', 'Life_expectancy', and 'Gender'

# Create the comparative plot using ggplot2
comparative_plot <- ggplot(df, aes(x = Race, y = Life_expectancy, color = Gender)) +
  geom_line() +
  labs(x = "Race", y = "Life Expectancy", title = "Comparison of Life Expectancy Trends by Gender")

# Display the plot
print(comparative_plot)



########################CA###################


# Load necessary libraries
library(ggplot2)   # for plotting
library(tidyr)     # for data manipulation

# Read the data
df <- read.csv("C:\\Users\\AdeBello\\Documents\\disease.csv")
str(df)
attach(df)


# Load required libraries
library(tidyverse)
library(FactoMineR)
library(factoextra)



# Reshape the data for analysis
df_long <- df %>%
  gather(key = "Cause_of_Death", value = "Mortality_Rate", -Year, -Specified_age, -Gender, -Race)

# Grouped Bar Plot
ggplot(df_long, aes(x = Specified_age, y = Life_expectancy, fill = Race)) +
  geom_bar(stat = "identity", position = "dodge") +
  labs(title = "Life Expectancy by Specified Age and Racial Group",
       x = "Specified Age", y = "Life Expectancy", fill = "Racial Group") +
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))




df_long <- df %>%
  gather(key = "Gender", value = "Life_expectancy", -Year, -Specified_age, -Gender, -Race)




# Stacked Bar Plot
ggplot(df_long, aes(x = Race, y = Life_expectancy, fill = Specified_age)) +
  geom_bar(stat = "identity") +
  labs(title = "Distribution of Life Expectancy by Gender and Year",
       x = "Gender", y = "Life Expectancy", fill = "Year") +
  theme_minimal()

