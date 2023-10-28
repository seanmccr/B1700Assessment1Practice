# ----- B1700 Assessment 1 - Practice -----

# ADD THE PAGE NUMBER WHERE I CAN FIND EACH OF THESE ON MYPLACE I.E 3.4.1 FOR LOADING LIBRARIES

Tasks to be Completed:
  - Loading libraries required for script to run 
  - Importing data from different file formations, inc. .csv and .xls
  - Creating dataframe from imported file
  - Creating a markdown document in R
  - Make sure code is commented approriately
  - Renaming variables in the dataset
  - Changing data types in R (ex: character to integar)
  - Creating a new variable based on an operation carried out using existing variables
  - Dealing with missing data by removing rows that contain missing data
  - Removing specific variables from the dataset
  - Identifying outliers in the dataset, and dealing with these appropriately
  - Calculating & printing descriptive statistics (ex: mean, median, min, max, SD)
  - Calculating histograms for specific variables
  - Creating boxplot for specific variables & being able to create boxplots of different groups 
  - Creating a corrolation matrix of variables in the dataset, and creating a heatmap of this matrix
  - Creating a scatter plot of two variables in the dataset & adding linear regression line to scatterplot

To finish, create a R Markdown file (which will be requested in the assessment) to send away as a
matter of proper process
-------------------------------------------------------------------------
  
<<<<<<< Updated upstream
1) Loading libraries required for script to run:
  
PracticeBranch Edit
  
  
=======
install.packages("tidyverse")
# 1) Loading libraries requireded for script to run
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



# Show ability to use these particular functions
head(df) # checking the heads of the columns
summary(df) # summary of the different variables in the data file
str(df) # detail the strings of variable data

df2 <- na.omit(df) # code to omit rows with 'NA' in them

df2 >- subset(df, select = -c(X)) # removing  a variable 
head(df2) # checking the variable has been removed

df2 <- rename(df2, x_pos = xpos, y_pos = ypos) # renaming a variable name
head(df2, 2) # Code to check the variable rename has worked

df2$variablex <- as.factor(df2$variablex) # Code to change the variable to a factor type
df2$variabley <- as.numeric(df2$variabley) # Code to change the variable to a numeric

summary(df2) # Code to then check that the variables have changed type

# Identifying outliers in the dataset and dealing with these appropriately 

# CHECK UP AGAIN ON Z SCORES
# Code to remove outliers from the dataset
remove_outliers <- function(df2, columns, z_threshold = 2)
  dfcleaned <- df2
  for (col in columns) {
    z_scores <- scale(df2[[col]])
    outliers <- abs(z_scores) > z_threshold
    dfcleaned <- dfcleaned[!outliers, ]
  }
return(dfcleaned)

columns_to_check <- c("xpos", "ypos")
df3 <- remove_outliers(df2, column_to_check)
# Remove any observations (rows) with missing values
df3 <- na.omit(df3)

range(df2$xpos) # range in the original dataframe
range(df3$xpos) # range in new dataframe
# creating variable by combining two different variables
df3$totalshots <- df3$shotson + df3$shotsoff
summary(df3$totalshots) # Code to check that the new variable has been created and included

mean(df3$xpos)
median(df3$xpos)
min(df3$xpos)
max(df3$xpos)
sd(df3$xpos)

hist(df3$shotson, col = "green", main = "histogram of Shots on Target")

histo_plot <- ggplot(df3, aes(x = shotsoff)) +
  geom_histogram()

histo_plot

# Creating a histogram
# Creating boxplot
# Creating scatterplot and regression line
# Creating a heatmap of 3 different variables
# Cleaning environment
# Name the rmarkdown file with our student name and remove all the stuff thats put
# in example R markdown files except first 4 lines of code
# Copy and paste the script into the r markdown file
# At the very top, put in the code to indicate r file code "``` {return line} ```{r}"
# At the end, then use ``` again to close the code bracket.
# Check that the rmarkdown file is working and it appears readable and working
# Save again as student no., then submit



>>>>>>> Stashed changes
  