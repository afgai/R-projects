# Obesity Levels and Indicators 

## Dataset Information and Source

This dataset include data for the estimation of obesity levels in individuals from the countries of Mexico, Peru and Colombia, based on their eating habits and physical condition. The data contains 17 attributes and 2111 records, the records are labeled with the class variable NObesity (Obesity Level), that allows classification of the data using the values of Insufficient Weight, Normal Weight, Overweight Level I, Overweight Level II, Obesity Type I, Obesity Type II and Obesity Type III. 77% of the data was generated synthetically using the Weka tool and the SMOTE filter, 23% of the data was collected directly from users through a web platform.

FAVC : Feature, Binary, " Do you eat high caloric food frequently? "
FCVC : Feature, Integer, " Do you usually eat vegetables in your meals? "
NCP : Feature, Continuous, " How many main meals do you have daily? "
CAEC : Feature, Categorical, " Do you eat any food between meals? "
SMOKE : Feature, Binary, " Do you smoke? "
CH2O: Feature, Continuous, " How much water do you drink daily? "
SCC: Feature, Binary, " Do you monitor the calories you eat daily? "
FAF: Feature, Continuous, " How often do you have physical activity? "
TUE : Feature, Integer, " How much time do you use technological devices such as cell phone, videogames, television, computer and others? "

CALC : Feature, Categorical, " How often do you drink alcohol? "
MTRANS : Feature, Categorical, " Which transportation do you usually use? "
NObeyesdad : Target, Categorical, "Obesity level" " [SOURCE](https://www.kaggle.com/datasets/fatemehmehrparvar/obesity-levels)

## Data Cleaning and Preparation
---
In the following code, we begin by installing the necessary packages needed to run our functions as well as clean the data, ensuring standardized column names and proper arrangement of the data by age. 
----
---
#installing and loading necessary packages

install.packages("dplyr")
install.packages("tidyverse")

library(dplyr) </br>
library(tidyverse)

install.packages("skimr") </br>
library(skimr)

install.packages("janitor") </br>
library(janitor)

install.packages("here") </br>
library(here)

#importing dataset </br>
obesity_data <- read.csv(file.choose())

#getting a glimpse of the data </br>
glimpse(obesity_data)

#Standardize column names: ensures that only characters, numbers and underscores in the names </br>
clean_names(obesity_data)

#sort the data by age </br>
obesity_data %>% arrange(Age)

--- 
Data Visualization 
---
---
install.packages("ggplot2") </br>
library(ggplot2)

#2. Eating Between Meals (CAEC) vs Obesity Level </br>

ggplot(obesity_data, aes(x = CAEC, fill = NObeyesdad)) + </br>
  geom_bar(position = "dodge") + scale_fill_manual(values = c( </br>
    "Insufficient_Weight" = "lightblue1", </br>
    "Normal_Weight" = "lightblue2", </br>
    "Overweight_Level_I" = "lightblue3", </br>
    "Overweight_Level_II" = "lightblue4", </br>
    "Obesity_Type_I" = "gray54", </br>
    "Obesity_Type_II" = "gray37", </br>
    "Obesity_Type_III" = "gray24" </br>
  )) +  </br>
  labs(title = "Eating Between Meals (CAEC) vs Obesity Level", x = "CAEC", y = "Count") </br>

 ![ggplot1!](Rplot2.jpeg)  


#2. Transportation Type (MTRANS) vs Obesity Level </br>
ggplot(obesity_data, aes(x = MTRANS, fill = NObeyesdad)) + </br>
  geom_bar(position = "dodge") + scale_fill_manual(values = c( </br>
    "Insufficient_Weight" = "rosybrown1", </br>
    "Normal_Weight" = "rosybrown2", </br>
    "Overweight_Level_I" = "rosybrown3", </br>
    "Overweight_Level_II" = "rosybrown4", </br>
    "Obesity_Type_I" = "lightpink4", </br>
    "Obesity_Type_II" = "salmon4", </br>
    "Obesity_Type_III" = "saddlebrown" </br>
  )) + </br>
  labs(title = "Transportation Type vs Obesity Level", x = "Transportation Type", y = "Count") </br>
  
  ![ggplot2!](Rplot1.jpeg)  

#3. Vegetable Consumption (FCVC) vs Obesity Level </br>
ggplot(obesity_data, aes(x = NObeyesdad, y = FCVC)) + </br>
  geom_boxplot(fill = "lightgreen") + </br>
  theme_minimal() + </br>
  theme(axis.text.x = element_text(angle = 45, hjust = 1)) + </br>
  labs(title = "Vegetable Consumption (FCVC) vs Obesity Level", x = "", y = "FCVC") </br>

  ![ggplot3!](Rplot3.jpeg)  

#4. Water Intake (CH2O) vs Obesity Level </br>
ggplot(obesity_data, aes(x = NObeyesdad, y = CH2O)) + </br>
  geom_boxplot(fill = "lightblue") + </br>
  theme_minimal() + </br>
  theme(axis.text.x = element_text(angle = 45, hjust = 1)) + </br>
  labs(title = "Water Intake (CH2O) vs Obesity Level", x = "", y = "CH2O") </br>

  ![ggplot4!](Rplot4.jpeg)  

#5. Alcohol Consumption (CALC) vs Obesity Level </br>
ggplot(obesity_data, aes(x = CALC, fill = NObeyesdad)) + </br>
  geom_bar(position = "dodge") + </br>
  theme_minimal() + </br>
  labs(title = "Alcohol Consumption (CALC) vs Obesity Level", x = "CALC", y = "Count") </br>

  ![ggplot5!](Rplot5.jpeg)  
  
---

