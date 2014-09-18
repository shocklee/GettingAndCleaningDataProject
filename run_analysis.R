##### 
# Script:       run_analysis.R
# Author:       Mark Shocklee
# Date:         09/12/2014
# Version:      1.0
# Description:  Getting and Cleaning Data Project
#####
#
# Setup the local Windows environment
#
setwd("C:\\Users\\Mark\\Coursera\\GettingAndCleaningData\\Project")
#
# Create a data directory for the project file
#
if(! file.exists("data")) {
        dir.create("data")
}
#
# Download the file from the proper website and store it locally in the
# data directory.
#
fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
zipFile <- "./data/getdata_projectfiles_FUCI HAR Dataset.zip"
download.file(fileURL, destfile = zipFile)
#
# Record the data when the file was downloaded and place this into a comment.
#
dataDownloaded <- date() # "Fri Sep 12 17:30:17 2014"
#
# Unzip the files into the data directory
#
unzip(zipFile, exdir = "./data")
#####
# This is the beginning of the project work.  Each step description is
# taken directly from the project assignment.  Additonal detail will be
# provided to supplement the simple descriptions that were downloaded.
#####
#
# Set the directories where the UCI HAR Data is located
#
unzipFileDirectory <- "./data/UCI HAR Dataset/"
trainFileDirectory <- "./data/UCI HAR Dataset/train/"
testFileDirectory <- "./data/UCI HAR Dataset/test/"
#
# Set the names of the files where the UCI HAR Data is located
#
featuresFileName <- "features.txt"
activityLablesFileName <- "activity_labels.txt"
subjectTestFileName <- "subject_test.txt"
XTestFileName <- "X_test.txt"
YTestFileName <- "y_test.txt"
subjectTrainFileName <- "subject_train.txt"
XTrainFileName <- "X_train.txt"
YTrainFileName <- "y_train.txt"
#
# Read the contents of file containing the variable names
#
featuresFile <- read.table(paste0(unzipFileDirectory, featuresFileName), colClasses = "character")
#
# Read the contents of file containing the activity label names
#
activityLabelsFile <- read.table(paste0(unzipFileDirectory, activityLablesFileName), colClasses = "character")
#
# Read the contents of file containing the data located in the test directory
#
subjectTestFile <- read.table(paste0(testFileDirectory, subjectTestFileName), colClasses = "character")
XTestFile <- read.table(paste0(testFileDirectory, XTestFileName), colClasses = "character")
YTestFile <- read.table(paste0(testFileDirectory, YTestFileName), colClasses = "character")
#
# Read the contents of file containing the data located in the train directory
#
subjectTrainFile <- read.table(paste0(trainFileDirectory, subjectTrainFileName), colClasses = "character")
XTrainFile <- read.table(paste0(trainFileDirectory, XTrainFileName), colClasses = "character")
YTrainFile <- read.table(paste0(trainFileDirectory, YTrainFileName), colClasses = "character")
#
# 1, Merge the training and the test sets to create one data set.
#
#
# Merge the data from the test and train directories
# All of these data frames have the same number of rows
#
totalSubjectFile <- rbind(subjectTestFile, subjectTrainFile)
totalXFile <- rbind(XTestFile, XTrainFile)
totalYFile <- rbind(YTestFile, YTrainFile)
#####
#
# Here is a recap of what we have done so far
#   featuresFile        contains the variable names; this matches the number of columns in the totalXFile
#   activityLabelsFile	contains the activity labels
#   totalSubjectFile	contains the merged subject test files
#   totalXFile		contains the merged x test files
#   totalYFile		contains the merged y test files
#
#####
#
# Merge the data frames that have the same number of rows by column
#
mergeFile <- cbind(totalSubjectFile, totalYFile, totalXFile)
#
# Convert the activity labels in the totalYFile to their text values
#
#
# Add meaningful column names to the data
#
#
# Select only those columns that have the data of interest
#
#
# Write out the result in the desired format

#
# 2, Extract only the measurements on the mean and standard deviation for 
# each measurement.
#
#
# 3. Use descriptive activity names to name the activities in the data set.
#
#
# 4. Appropriately labels the data set with descriptive variable names. 
#
#
# 5. From the data set in step 4, creates a second, independent tidy data set 
# with the average of each variable for each activity and each subject.
#
# Write the tidy data set so that it can be uploaded to the project site.
write.table() using row.name=FALSE