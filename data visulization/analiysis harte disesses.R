# Install required packages if not already installed
if (!require(tidyverse)) install.packages("tidyverse")
if (!require(ggplot2)) install.packages("ggplot2")
if (!require(corrplot)) install.packages("corrplot")

# Load libraries
library(tidyverse)
library(ggplot2)
library(corrplot)

# Read the data
# Assuming you save the data as 'heart_data.csv'
# Using forward slashes
data <- read.csv("C:/Users/HP/OneDrive/Desktop/data.csv", na.strings = "?")

# OR using double backslashes
data <- read.csv("C:\\Users\\HP\\OneDrive\\Desktop\\data.csv", na.strings = "?")

# Check the first few rows
head(data)

# Check the structure
str(data)

# Check for missing values
colSums(is.na(data))


# Replace '?' with NA
data[data == "?"] <- NA

# Basic data exploration
print("Dataset Structure:")
str(data)

print("Summary Statistics:")
summary(data)

print("Missing Values Count:")
colSums(is.na(data))

# Convert categorical variables to factors
data$sex <- factor(data$sex, levels = c(0,1), labels = c("Female", "Male"))
data$cp <- factor(data$cp, levels = c(1,2,3,4), 
                  labels = c("Typical Angina", "Atypical Angina", "Non-anginal", "Asymptomatic"))
data$fbs <- factor(data$fbs, levels = c(0,1), labels = c("No", "Yes"))
data$restecg <- factor(data$restecg, levels = c(0,1,2),
                       labels = c("Normal", "ST-T abnormality", "Hypertrophy"))
data$exang <- factor(data$exang, levels = c(0,1), labels = c("No", "Yes"))
data$num <- factor(data$num, levels = c(0,1), labels = c("No Disease", "Disease"))

# 1. Age Distribution
ggplot(data, aes(x = age)) +
  geom_histogram(binwidth = 5, fill = "blue", color = "black") +
  labs(title = "Age Distribution", x = "Age", y = "Count") +
  theme_minimal()

# 2. Disease prevalence by sex
ggplot(data, aes(x = sex, fill = num)) +
  geom_bar(position = "dodge") +
  labs(title = "Disease Prevalence by Sex", x = "Sex", y = "Count") +
  scale_fill_manual(values = c("blue", "red")) +
  theme_minimal()

# 3. Cholesterol vs Age with Disease Status
ggplot(data, aes(x = age, y = chol, color = num)) +
  geom_point(alpha = 0.6) +
  labs(title = "Cholesterol vs Age by Disease Status", 
       x = "Age", 
       y = "Cholesterol (mg/dl)") +
  scale_color_manual(values = c("blue", "red")) +
  theme_minimal()

# 4. Boxplot of Resting Blood Pressure by Disease Status
ggplot(data, aes(x = num, y = trestbps, fill = num)) +
  geom_boxplot() +
  labs(title = "Resting Blood Pressure by Disease Status",
       x = "Disease Status",
       y = "Resting BP (mmHg)") +
  scale_fill_manual(values = c("blue", "red")) +
  theme_minimal()

# 5. Correlation matrix for numeric variables
numeric_data <- data %>% 
  select(age, trestbps, chol, thalach, oldpeak)
cor_matrix <- cor(numeric_data, use = "complete.obs")
corrplot(cor_matrix, method = "color", 
         type = "upper",
         addCoef.col = "black",
         tl.col = "black",
         tl.srt = 45,
         diag = FALSE)

# Basic statistical analysis
print("Average values by disease status:")
data %>%
  group_by(num) %>%
  summarise(
    avg_age = mean(age, na.rm = TRUE),
    avg_chol = mean(chol, na.rm = TRUE),
    avg_trestbps = mean(trestbps, na.rm = TRUE),
    avg_thalach = mean(thalach, na.rm = TRUE)
  )

# Save all plots
ggsave("age_distribution.png", width = 8, height = 6)
ggsave("disease_by_sex.png", width = 8, height = 6)
ggsave("chol_vs_age.png", width = 8, height = 6)
ggsave("bp_by_disease.png", width = 8, height = 6)


