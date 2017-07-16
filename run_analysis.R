## Load CRAN modules 
library(downloader)
library(reshape2)

## Download and unzip

Url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"

if(!file.exists("./projectGetCleanData")){
  dir.create("./projectGetCleanData")
  }

if(!file.exists("./projectGetCleanData/Dataset.zip")){
  download.file(Url,destfile="./projectGetCleanData/Dataset.zip",mode = "wb")
  }

if(!file.exists("./projectGetCleanData/UCI HAR Dataset")){
  unzip(zipfile="./projectGetCleanData/Dataset.zip",exdir="./projectGetCleanData")
}

# Read features & activity_labels as characters

features <- read.table("./projectGetCleanData/UCI HAR Dataset/features.txt")
features_char <- as.character(features[,2])
activity_labels <- read.table("./projectGetCleanData/UCI HAR Dataset/activity_labels.txt")
activity_labels_char <- as.character(activity_labels[,2])

# Extract variables mean() and std()

mean_std <- grep("mean\\(\\)|std\\(\\)", features_char)
mean_std.names <- features[mean_std,2]
mean_std.names = gsub('-mean\\(\\)', 'Mean', mean_std.names)
mean_std.names = gsub('-std\\(\\)', 'Std', mean_std.names)
mean_std.names <- gsub('[-()]', '', mean_std.names)

# Load test and train datasets

test <- read.table("./projectGetCleanData/UCI HAR Dataset/test/X_test.txt")[mean_std]
test_act <- read.table("./projectGetCleanData/UCI HAR Dataset/test/Y_test.txt")
test_sub <- read.table("./projectGetCleanData/UCI HAR Dataset/test/subject_test.txt")
test <- cbind(test_sub, test_act, test)

train <- read.table("./projectGetCleanData/UCI HAR Dataset/train/X_train.txt")[mean_std]
train_act <- read.table("./projectGetCleanData/UCI HAR Dataset/train/Y_train.txt")
train_sub <- read.table("./projectGetCleanData/UCI HAR Dataset/train/subject_train.txt")
train <- cbind(train_sub, train_act, train)

# merge test and train datasets; add column names

Data <- rbind(train, test)
colnames(Data) <- c("subject", "activity", mean_std.names)

# Convert activity and subject columns into factors and create a independent tidy data set

Data$activity <- factor(allData$activity, levels = activity_labels[,1], labels = activity_labels[,2])
Data$subject <- as.factor(allData$subject)

Data_melt <- melt(Data, id = c("subject", "activity"))
Data_mean <- dcast(Data_melt, subject + activity ~ variable, mean)

write.table(Data_mean, "tidydata.txt", row.names = FALSE, quote = FALSE)
