########## 
# Script:       run_analysis.R
# Author:       Mark Shocklee
# Date:         09/20/2014
# Version:      2.0
# Description:  Getting and Cleaning Data Project
#               The code is broken down into broad steps that have a boxed 
#               heading, while the detail steps follow the numbering scheme
#               from the process description in the README.md file.
##########


##########
#
# Read Data
#
##########


# Setup the local Windows environment
setwd("C:\\Users\\Mark\\Coursera\\GettingAndCleaningData\\Project")
# Specify any packages used
library(plyr)
# Create a data directory for the project file
if(! file.exists("data")) {
        dir.create("data")
}
#
# 1. Download the zip data from the specified web site and write it locally in
# the data directory.
#
fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
zipFile <- "./data/getdata_projectfiles_FUCI HAR Dataset.zip"
download.file(fileURL, destfile = zipFile)
# Record the data when the file was downloaded and place this into a comment.
dataDownloaded <- date() # "Fri Sep 12 17:30:17 2014"
#
# 2. Unzip the files into the data directory
#
unzip(zipFile, exdir = "./data")
#
# 3. Create references to each one of the files of interest.
#
# Set the directories where the UCI HAR Data is located
unzipFileDirectory <- "./data/UCI HAR Dataset/"
trainFileDirectory <- "./data/UCI HAR Dataset/train/"
testFileDirectory <- "./data/UCI HAR Dataset/test/"
# Set the names of the files where the UCI HAR Data is located
featuresFileName <- "features.txt"
activityLablesFileName <- "activity_labels.txt"
subjectTestFileName <- "subject_test.txt"
XTestFileName <- "X_test.txt"
YTestFileName <- "y_test.txt"
subjectTrainFileName <- "subject_train.txt"
XTrainFileName <- "X_train.txt"
YTrainFileName <- "y_train.txt"
outputDataFileName <- "./data/classprojectoutput.txt"
# Read the contents of file containing the variable names
featuresFile <- read.table(paste0(unzipFileDirectory, featuresFileName), colClasses = "character")
# Read the contents of file containing the activity label names
activityLabelsFile <- read.table(paste0(unzipFileDirectory, activityLablesFileName), colClasses = "character")
# Read the contents of file containing the data located in the test directory
subjectTestFile <- read.table(paste0(testFileDirectory, subjectTestFileName), colClasses = "numeric")
XTestFile <- read.table(paste0(testFileDirectory, XTestFileName), colClasses = "numeric")
YTestFile <- read.table(paste0(testFileDirectory, YTestFileName), colClasses = "character")
# Read the contents of file containing the data located in the train directory
subjectTrainFile <- read.table(paste0(trainFileDirectory, subjectTrainFileName), colClasses = "numeric")
XTrainFile <- read.table(paste0(trainFileDirectory, XTrainFileName), colClasses = "numeric")
YTrainFile <- read.table(paste0(trainFileDirectory, YTrainFileName), colClasses = "character")
#
# 4. While this step didn't make it into the run_analysis file, check to see if
#    all of the file dimensions match, and do any other basic checking to make
#    sure the files are OK
#


##########
#
# Merge Data
#
##########


#
# 5. Merge the corresponding training and the test sets to create one data set.
#
# Merge the data from the test and train directories
# All of these data frames have the same number of rows
totalSubjectFile <- rbind(subjectTestFile, subjectTrainFile)
totalXFile <- rbind(XTestFile, XTrainFile)
totalYFile <- rbind(YTestFile, YTrainFile)


##########
#
# Label Data
#
##########


#
# 6. Appropriately labels the data set with descriptive variable names.  
#
colnames(activityLabelsFile) <- c("activityIdentifier", "activity")
colnames(totalSubjectFile) <- "subjectIdentifier"
colnames(totalXFile) <- featuresFile$V2
colnames(totalYFile) <- "activityIdentifier"
#
# 7. Merge the data frames that have the same number of rows by column
#
mergeFile <- cbind(totalSubjectFile, totalYFile, totalXFile)
#
# 8. Convert the activity labels to their text values using the values in the
# activityLabelsFile
#
mergeFile <- merge(mergeFile, activityLabelsFile, 
                   by.x = "activityIdentifier", by.y = "activityIdentifier")
#
# 9. Extract only the measurements on the mean and standard deviation for 
# each measurement.
#
columnsOfInterest <- grep("activity|subjectIdentifier|mean|std", colnames(mergeFile))
reducedDataFile <- mergeFile[,columnsOfInterest]


##########
#
# Process Data
#
##########


#
# 10. From the data set, creates a second, independent tidy data set 
# with the average of each variable for each activity and each subject.
#
outputDataFile <- ddply(reducedDataFile, .(activity, subjectIdentifier), 
                        numcolwise(mean))
#
# 11. Write the tidy data set so that it can be uploaded to the project site.
#
write.table(outputDataFile, file = outputDataFileName, row.name=FALSE)