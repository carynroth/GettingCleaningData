# Getting & Cleaning Data 
This repository contains submission for Getting and Cleaning Data Course, as well as a code book describing each variable. 

The script run_analysis.R: 
* takes data collected from the accelerometers from the Samsung Galaxy S smartphone. This data was spilt to test and training, and column and row names/lables were separated
* the script merges the relevant data sets and ensures correct column and rows match
* the script then extracts measurements on only the mean and standard deviation and excludes the remaining measurements from the data set
* the scrip renames activity names so they are clear and descriptive 
* the scrit renames data variable names so they are clear and descriptive
* finally, the script creates an independent tidy data set with the average of each variable for each activity and each subject

