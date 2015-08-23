
library(dplyr)

## create directory to download data into
if (!file.exists("data")) {
  dir.create("data")
}

# download and unzip file
temp <- tempfile()
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl, temp, method = "curl")
dateDownloaded <- date()
unzip(temp)
unlink(temp)

## get feature names
feature_names <- read.table("features.txt")
as.vector(feature_names)

## read in train data and headers
X_train_names <- read.table("train/X_train.txt", col.names = feature_names$V2)
y_train <- read.table("train/y_train.txt", col.names = "activity")
subjects_train <- read.table("train/subject_train.txt", col.names = "subject")

## combine subject, activity and training data 
train_df_names = cbind(subjects_train, y_train, X_train_names)

## read in test data
X_test_names <- read.table("test/X_test.txt", col.names = feature_names$V2)
y_test <- read.table("test/y_test.txt", col.names = "activity")
subjects_test <- read.table("test/subject_test.txt", col.names = "subject")

## combine subject, activity and training data 
test_df_names = cbind(subjects_test, y_test, X_test_names)

##combine test and training data
test_train_df <- rbind.data.frame(train_df_names, test_df_names)

## select only columns that are means or standard deviations
mean_sd_df <- test_train_df[, grepl("subject|activity|\\.mean\\...[X, Y, Z]|\\.std\\...[X, Y, Z]" , colnames(test_train_df))]

## rename activities with descriptive names
mean_sd_df$activity[mean_sd_df$activity==1] <- "walking"
mean_sd_df$activity[mean_sd_df$activity==2] <- "walkingUpstairs"
mean_sd_df$activity[mean_sd_df$activity==3] <- "walkingDownstairs"
mean_sd_df$activity[mean_sd_df$activity==4] <- "sitting"
mean_sd_df$activity[mean_sd_df$activity==5] <- "standing"
mean_sd_df$activity[mean_sd_df$activity==6] <- "laying"


## rename variables with descriptive names
colnames(mean_sd_df) <- gsub("^t", "time", colnames(mean_sd_df))
colnames(mean_sd_df) <- gsub("^f", "freq", colnames(mean_sd_df))
colnames(mean_sd_df) <- gsub("\\.\\.\\.", "", colnames(mean_sd_df))
colnames(mean_sd_df) <- gsub("\\.", "", colnames(mean_sd_df))
colnames(mean_sd_df) <- gsub("mean", "Mean", colnames(mean_sd_df))
colnames(mean_sd_df) <- gsub("std", "StDev", colnames(mean_sd_df))
  
## create new tidy data set with means of each measurement for each activity for each subject
new <- mean_sd_df %>%
  group_by(subject, activity) %>%
  select(3:50) %>%
  summarise_each(
    funs(mean)
  ) 

## write to text file
write.table(new, file="tidy_data.txt", row.names = FALSE)
