B1700 Assessment 1 - Practice 

# Tasks to be Completed:
#   - Loading libraries required for script to run 
#   - Importing data from different file formations, inc. .csv and .xls
#   - Creating dataframe from imported file
#   - Creating a markdown document in R
#   - Make sure code is commented approriately
#   - Renaming variables in the dataset
#   - Changing data types in R (ex: character to integar)
#   - Creating a new variable based on an operation carried out using existing variables
#   - Dealing with missing data by removing rows that contain missing data
#   - Removing specific variables from the dataset
#   - Identifying outliers in the dataset, and dealing with these appropriately
#   - Calculating & printing descriptive statistics (ex: mean, median, min, max, SD)
#   - Calculating histograms for specific variables
#   - Creating boxplot for specific variables & being able to create boxplots of different groups 
#   - Creating a corrolation matrix of variables in the dataset, and creating a heatmap of this matrix
#   - Creating a scatter plot of two variables in the dataset & adding linear regression line to scatterplot
# 
# To finish, create a R Markdown file (which will be requested by the assessment) to send away as a
# matter of proper process
-------------------------------------------------------------------------
  

# 1) Loading libraries requried for script to run
library(tidyverse)

# 2) Importing data from different file formations, inc. .csv and .xls
# 3) Creating a dataframe from the imported files
# Example of reading a .csv from a respository and creating a dataframe with it
NBAData <- read_csv("/Users/seanmccrone/Desktop/MASTERS DEGREE/Course Material/B1700/Assessment 1 Practice/B1700 Assessment 1 Practice/NBA21_22_pergame copy.csv")
# Example of reading and creating a dataframe from a csv accessed via url link
url <- "https://www.dropbox.com/scl/fi/3z0phw1h42va1t79wm3e5/data_b1700_01.csv?rlkey=z612clpohrx3gwknavbo0cakb&dl=1"
PracData <- read.csv(url)
rm(url) # Code used to keep the 'environment' section tidy

# We now have two dataframes which we may or may not use, 'NBAData' and 'PracData'

# 4) Creating a markdown document in R
# Basic R Markdown document has been created, with items added to it as tasks progress

# 5) Make sure code is commented appropriately 
# All tasks will be commented with description of code purpose as the practice progresses

# 6)

  