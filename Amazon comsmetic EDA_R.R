#loading the required libraries
library(tidyverse)
library(skimr)
library(explore)
library(readxl) 
library(janitor)
library(DataExplorer)
library(plotly)
library(ggplot2)
#loading in the data set
amazon_cosmetics <- read.csv("C:/Users/HP/Downloads/ratings_Beauty.csv")
# Create a new categorical variable for Rating ranges
amazon_cosmetics$RatingCategory <- cut(amazon_cosmetics$Rating, breaks=c(0, 2, 4, 5), labels=c("Low", "Medium", "High"))
View(amazon_cosmetics)
str(amazon_cosmetics)
DataExplorer::create_report(amazon_cosmetics)
#str(amazon_cosmetics)
#amazon_cosmetics$ProductId <- as.factor(amazon_cosmetics$ProductId)
#plot_bar(amazon_cosmetics$ProductId)
#inspecting the data
#view(amazon_cosmetics)
#glimpse(amazon_cosmetics)
#further investigation by showing first 6 rows
#head(amazon_cosmetics)
#summary(amazon_cosmetics)
#DataExplorer::create_report(amazon_cosmetics)
#skimr::skim(amazon_cosmetics)
