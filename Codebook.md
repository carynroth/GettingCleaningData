

# Title: Codebook
# Author: Caryn Roth
# Date: August 22, 2015


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
integer,
1-30 unique subjects in the dataset

###Variable 2: "activity"   
character,
6 levels:
WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING

###Variable 3: "timeBodyAccMeanX"      
numeric
mean of the mean of the time domain body acceleration signal in the X direction,
normalized, no units

###Variable 4: "timeBodyAccMeanY"      
numeric
mean of the mean of the time domain body acceleration signal in the Y direction,
normalized, no units

###Variable 5: "timeBodyAccMeanZ"      
numeric
mean of the mean of the time domain body acceleration signal in the Z direction,
normalized, no units

###Variable 6: "timeBodyAccStDevX"      
numeric
mean of the standard deviation of the time domain body acceleration signal in the X direction,
normalized, no units

###Variable 7: "timeBodyAccStDevY"      
numeric
mean of the standard deviation of the time domain body acceleration signal in the Y direction,
normalized, no units

###Variable 8: "timeBodyAccStDevZ"      
numeric
mean of the standard deviation of the time domain body acceleration signal in the Z direction,
normalized, no units
    
###Variable 9: "timeGravityAccMeanX"      
numeric
mean of the mean of the time domain gravity acceleration signal in the X direction,
normalized, no units

###Variable 10: "timeGravityAccMeanY"      
numeric
mean of the mean of the time domain gravity acceleration signal in the Y direction,
normalized, no units

###Variable 11: "timeGravityAccMeanZ"      
numeric
mean of the mean of the time domain gravity acceleration signal in the Z direction,
normalized, no units

###Variable 12: "timeGravityAccStDevX"      
numeric
mean of the standard deviation of the time domain gravity acceleration signal in the X direction,
normalized, no units

###Variable 13: "timeGravityAccStDevY"      
numeric
mean of the standard deviation of the time domain gravity acceleration signal in the Y direction,
normalized, no units

###Variable 14: "timeGravityAccStDevZ"      
numeric
mean of the standard deviation of the time domain gravity acceleration signal in the Z direction,
normalized, no units

###Variable 15: "timeBodyAccJerkMeanX"      
numeric
mean of the mean of the time domain body acceleration jerk signal in the X direction,
normalized, no units

###Variable 16: "timeBodyAccJerkMeanY"      
numeric
mean of the mean of the time domain body acceleration jerk signal in the Y direction,
normalized, no units

###Variable 17: "timeBodyAccJerkMeanZ"      
numeric
mean of the mean of the time domain body acceleration jerk signal in the Z direction,
normalized, no units

###Variable 18: "timeBodyAccJerkStDevX"      
numeric
mean of the standard deviation of the time domain body acceleration jerk signal in the X direction,
normalized, no units

###Variable 19: "timeBodyAccJerkStDevY"      
numeric
mean of the standard deviation of the time domain body acceleration jerk signal in the Y direction,
normalized, no units

###Variable 20: "timeBodyAccJerkStDevZ"      
numeric
mean of the standard deviation of the time domain body acceleration jerk signal in the Z direction,
normalized, no units

###Variable 21: "timeBodyGyroMeanX"      
numeric
mean of the mean of the time domain body gyroscopic signal in the X direction,
normalized, no units

###Variable 22: "timeBodyGyroMeanY"      
numeric
mean of the mean of the time domain body gyroscopic signal in the Y direction,
normalized, no units

###Variable 23: "timeBodyGyroMeanZ"      
numeric
mean of the mean of the time domain body gyroscopic signal in the Z direction,
normalized, no units

###Variable 24: "timeBodyGyroStDevX"      
numeric
mean of the standard deviation of the time domain body gyroscopic signal in the X direction,
normalized, no units

###Variable 25: "timeBodyGyroStDevY"      
numeric
mean of the standard deviation of the time domain body gyroscopic signal in the Y direction,
normalized, no units

###Variable 26: "timeBodyGyroStDevZ"      
numeric
mean of the standard deviation of the time domain body gyroscopic signal in the Z direction,
normalized, no units

###Variable 27: "timeBodyGyroJerkMeanX"      
numeric
mean of the mean of the time domain body gyroscopic jerk signal in the X direction,
normalized, no units

###Variable 28: "timeBodyGyroJerkMeanY"      
numeric
mean of the mean of the time domain body gyroscopic jerk signal in the Y direction,
normalized, no units

###Variable 29: "timeBodyGyroJerkMeanZ"      
numeric
mean of the mean of the time domain body gyroscopic jerk signal in the Z direction,
normalized, no units

###Variable 30: "timeBodyGyroJerkStDevX"      
numeric
mean of the standard deviation of the time domain body gyroscopic jerk signal in the X direction,
normalized, no units

###Variable 31: "timeBodyGyroJerkStDevY"      
numeric
mean of the standard deviation of the time domain body gyroscopic jerk signal in the Y direction,
normalized, no units

###Variable 32: "timeBodyGyroJerkStDevZ"      
numeric
mean of the standard deviation of the time domain body gyroscopic jerk signal in the Z direction,
normalized, no units

###Variable 33: "freqBodyAccMeanX"      
numeric
mean of the mean of the frequency domain body acceleration signal in the X direction,
normalized, no units

###Variable 34: "freqBodyAccMeanY"      
numeric
mean of the mean of the frequency domain body acceleration signal in the Y direction,
normalized, no units

###Variable 35: "freqBodyAccMeanZ"      
numeric
mean of the mean of the frequency domain body acceleration signal in the Z direction,
normalized, no units

###Variable 36: "freqBodyAccStDevX"      
numeric
mean of the standard deviation of the frequency domain body acceleration signal in the X direction,
normalized, no units

###Variable 37: "freqBodyAccStDevY"      
numeric
mean of the standard deviation of the frequency domain body acceleration signal in the Y direction,
normalized, no units

###Variable 38: "freqBodyAccStDevZ"      
numeric
mean of the standard deviation of the frequency domain body acceleration signal in the Z direction,
normalized, no units

###Variable 39: "freqBodyAccJerkMeanX"      
numeric
mean of the mean of the frequency domain body acceleration jerk signal in the X direction,
normalized, no units

###Variable 40: "freqBodyAccJerkMeanY"      
numeric
mean of the mean of the frequency domain body acceleration jerk signal in the Y direction,
normalized, no units

###Variable 41: "freqBodyAccJerkMeanZ"      
numeric
mean of the mean of the frequency domain body acceleration jerk signal in the Z direction,
normalized, no units

###Variable 42: "tfreqBodyAccJerkStDevX"      
numeric
mean of the standard deviation of the frequency domain body acceleration jerk signal in the X direction,
normalized, no units

###Variable 43: "freqBodyAccJerkStDevY"      
numeric
mean of the standard deviation of the frequency domain body acceleration jerk signal in the Y direction,
normalized, no units

###Variable 44: "freqBodyAccJerkStDevZ"      
numeric
mean of the standard deviation of the frequency domain body acceleration jerk signal in the Z direction,
normalized, no units

###Variable 45: "freqBodyGyroMeanX"      
numeric
mean of the mean of the frequency domain body gyroscopic signal in the X direction,
normalized, no units

###Variable 46: "freqBodyGyroMeanY"      
numeric
mean of the mean of the frequency domain body gyroscopic signal in the Y direction,
normalized, no units

###Variable 47: "freqBodyGyroMeanZ"      
numeric
mean of the mean of the frequency domain body gyroscopic signal in the Z direction,
normalized, no units

###Variable 48: "freqBodyGyroStDevX"      
numeric
mean of the standard deviation of the frequency domain body gyroscopic signal in the X direction,
normalized, no units

###Variable 49: "freqBodyGyroStDevY"      
numeric
mean of the standard deviation of the frequency domain body gyroscopic signal in the Y direction,
normalized, no units

###Variable 50: "freqBodyGyroStDevZ"      
numeric
mean of the standard deviation of the frequency domain body gyroscopic signal in the Z direction,
normalized, no units  

##Sources
README file included with data

