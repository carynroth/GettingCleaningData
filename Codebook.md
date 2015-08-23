
---
title: "Codebook"
author: "Caryn Roth"
date: "August 22, 2015"
---

## Project Description
The purpose of this project is to take test and training data from smartphone accelerometer and gyroscope, take means and standard deviation values, and find means among subject and activity for each measurement. 

##Study design and data processing
30 study particiants between 19-48 years old performed each of six activities while wearing a smartphone on their waist. The accelerometer and gyroscope within the smartphone captured linear acceleration and angular velocity on 3-axes. The data was split into 70% training data and 30% test data.

###Collection of the raw data
Data collection was performed with smartphone accelerometers and gyroscopes and the data was manually labled using video recordings. Sensor signals were pre-processed, separated and filtered.

##Creating the tidy datafile

###Guide to create the tidy data file
The data was downloaded from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 
Training and test data were merged and the appropriate column and row lables were added.

###Cleaning of the data
Only measurements about the mean and standard deviation were extracted - the remaining variables were dropped.
For these variables, the mean was calculated for every subject for every activity.
Variables and activity names were re-named for clarity

##Description of the variables in the tiny_data.txt file
This file contains 180 observations of 50 variables.
These data are organized according to subject, activity and the mean value for each measurment. 
 
###Variable 1: "subject"
integer
1-30 unique subjects in the dataset

###Variable 2: "activity"   
character
6 levels of this variable
WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING

###Variable 3: "timeBodyAccMeanX"      
numeric
mean of the mean of the time domain body acceleration signal in the X direction
normalized, no units

###Variable 4: "timeBodyAccMeanY"      
numeric
mean of the mean of the time domain body acceleration signal in the Y direction
normalized, no units

###Variable 5: "timeBodyAccMeanZ"      
numeric
mean of the mean of the time domain body acceleration signal in the Z direction
normalized, no units

###Variable 6: "timeBodyAccStDevX"      
numeric
mean of the standard deviation of the time domain body acceleration signal in the X direction
normalized, no units

###Variable 7: "timeBodyAccStDevY"      
numeric
mean of the standard deviation of the time domain body acceleration signal in the Y direction
normalized, no units

###Variable 8: "timeBodyAccStDevZ"      
numeric
mean of the standard deviation of the time domain body acceleration signal in the Z direction
normalized, no units
    
###Variable 9: "timeGravityAccMeanX"      
numeric
mean of the mean of the time domain gravity acceleration signal in the X direction
normalized, no units

###Variable 10: "timeGravityAccMeanY"      
numeric
mean of the mean of the time domain gravity acceleration signal in the Y direction
normalized, no units

###Variable 11: "timeGravityAccMeanZ"      
numeric
mean of the mean of the time domain gravity acceleration signal in the Z direction
normalized, no units

###Variable 12: "timeGravityAccStDevX"      
numeric
mean of the standard deviation of the time domain gravity acceleration signal in the X direction
normalized, no units

###Variable 13: "timeGravityAccStDevY"      
numeric
mean of the standard deviation of the time domain gravity acceleration signal in the Y direction
normalized, no units

###Variable 14: "timeGravityAccStDevZ"      
numeric
mean of the standard deviation of the time domain gravity acceleration signal in the Z direction
normalized, no units




 "timeGravityAccMeanX"   
[10] "timeGravityAccMeanY"    "timeGravityAccMeanZ"    "timeGravityAccStDevX"  
[13] "timeGravityAccStDevY"   "timeGravityAccStDevZ"   "timeBodyAccJerkMeanX"  
[16] "timeBodyAccJerkMeanY"   "timeBodyAccJerkMeanZ"   "timeBodyAccJerkStDevX" 
[19] "timeBodyAccJerkStDevY"  "timeBodyAccJerkStDevZ"  "timeBodyGyroMeanX"     
[22] "timeBodyGyroMeanY"      "timeBodyGyroMeanZ"      "timeBodyGyroStDevX"    
[25] "timeBodyGyroStDevY"     "timeBodyGyroStDevZ"     "timeBodyGyroJerkMeanX" 
[28] "timeBodyGyroJerkMeanY"  "timeBodyGyroJerkMeanZ"  "timeBodyGyroJerkStDevX"
[31] "timeBodyGyroJerkStDevY" "timeBodyGyroJerkStDevZ" "freqBodyAccMeanX"      
[34] "freqBodyAccMeanY"       "freqBodyAccMeanZ"       "freqBodyAccStDevX"     
[37] "freqBodyAccStDevY"      "freqBodyAccStDevZ"      "freqBodyAccJerkMeanX"  
[40] "freqBodyAccJerkMeanY"   "freqBodyAccJerkMeanZ"   "freqBodyAccJerkStDevX" 
[43] "freqBodyAccJerkStDevY"  "freqBodyAccJerkStDevZ"  "freqBodyGyroMeanX"     
[46] "freqBodyGyroMeanY"      "freqBodyGyroMeanZ"      "freqBodyGyroStDevX"    
[49] "freqBodyGyroStDevY"     "freqBodyGyroStDevZ"    
> 
Some information on the variable including:
 - Class of the variable
 - Unique values/levels of the variable
 - Unit of measurement (if no unit of measurement list this as well)
 - In case names follow some schema, describe how entries were constructed (for example time-body-gyroscope-z has 4 levels of descriptors. Describe these 4 levels). 

(you can easily use Rcode for this, just load the dataset and provide the information directly form the tidy data file)

####Notes on variable 1:
If available, some additional notes on the variable not covered elsewehere. If no notes are present leave this section out.

##Sources
Sources you used if any, otherise leave out.

##Annex
If you used any code in the codebook that had the echo=FALSE attribute post this here (make sure you set the results parameter to 'hide' as you do not want the results to show again)
