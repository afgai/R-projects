#installing and loading necessary packages

install.packages("dplyr")
install.packages("tidyverse")

library(dplyr)
library(tidyverse)

install.packages("skimr")
library(skimr)

install.packages("janitor")
library(janitor)

install.packages("here")
library(here)

#importing dataset
obesity_data <- read.csv(file.choose())

#getting a glimpse of the data 
glimpse(obesity_data)


#Standardize column names: ensures that only characters, numbers and underscores in the names
clean_names(obesity_data)

# sort the data by age
obesity_data %>% arrange(Age)

install.packages("ggplot2")
library(ggplot2)

# 2. Eating Between Meals (CAEC) vs Obesity Level
ggplot(obesity_data, aes(x = CAEC, fill = NObeyesdad)) +
  geom_bar(position = "dodge") + scale_fill_manual(values = c(
    "Insufficient_Weight" = "lightblue1",
    "Normal_Weight" = "lightblue2",
    "Overweight_Level_I" = "lightblue3",
    "Overweight_Level_II" = "lightblue4",
    "Obesity_Type_I" = "gray54",
    "Obesity_Type_II" = "gray37",
    "Obesity_Type_III" = "gray24"
  )) + 
  labs(title = "Eating Between Meals (CAEC) vs Obesity Level", x = "CAEC", y = "Count")


# 2. Transportation Type (MTRANS) vs Obesity Level
ggplot(obesity_data, aes(x = MTRANS, fill = NObeyesdad)) +
  geom_bar(position = "dodge") + scale_fill_manual(values = c(
    "Insufficient_Weight" = "rosybrown1",
    "Normal_Weight" = "rosybrown2",
    "Overweight_Level_I" = "rosybrown3",
    "Overweight_Level_II" = "rosybrown4",
    "Obesity_Type_I" = "lightpink4",
    "Obesity_Type_II" = "salmon4",
    "Obesity_Type_III" = "saddlebrown"
  )) +
  labs(title = "Transportation Type vs Obesity Level", x = "Transportation Type", y = "Count")

# 3. Vegetable Consumption (FCVC) vs Obesity Level
ggplot(obesity_data, aes(x = NObeyesdad, y = FCVC)) +
  geom_boxplot(fill = "lightgreen") +
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1)) +
  labs(title = "Vegetable Consumption (FCVC) vs Obesity Level", x = "", y = "FCVC")

# 4. Water Intake (CH2O) vs Obesity Level
ggplot(obesity_data, aes(x = NObeyesdad, y = CH2O)) +
  geom_boxplot(fill = "lightblue") +
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1)) +
  labs(title = "Water Intake (CH2O) vs Obesity Level", x = "", y = "CH2O")

# 5. Alcohol Consumption (CALC) vs Obesity Level
ggplot(obesity_data, aes(x = CALC, fill = NObeyesdad)) +
  geom_bar(position = "dodge") +
  theme_minimal() +
  labs(title = "Alcohol Consumption (CALC) vs Obesity Level", x = "CALC", y = "Count")

