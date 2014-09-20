---
title: "README"
author: "Mark Shocklee"
date: "Saturday, September 20, 2014"
output: html_document
---
# Overview
This project was created as part of the Getting and Cleaning Data Course offered by Johns HOpkins University through Coursera.  The purpose of this project is to demonstrate basic skills in tidying datasets.

# Input

The file was obtained from 
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip and was downloaded on Fri Sep 12 17:30:17 2014.

## File components

The table below lists the contents of the zip file and a description of those files.

File Name           | Description
------------------- | ---------------------------------------------------------
README.txt          | Describes the files that are included in the zip file
features_info.txt   | Describes the data that is being collected
features.txt        | Positional list of all variable names in the dataset
activity_labels.txt | Activity key
test                | This is the directory where the test data resides
subject_test.txt    | The positional list of the subjects performing the test
X_test.txt          | Test dataset showing the data collected from the test
y_test.txt          | Test positional list of the activity performed during the test
train               | This is the directory where the training data resides
subject_train.txt   | The positional list of the subjects performing the test
X_train.txt         | Test dataset showing the data collected from the test
y_train.txt         | Test positional list of the activity performed during the test
inertial signals    | A subdirectory that appeared within the test and train directory; the files under this directory were not used

This dataset that was created for a Machine Learning class.  The data within the train directory is used to train the software, while the contents of the test directory was used to determine how well the Machine Learning model predicted actual values.

## License

Use of this dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.

# Process

## Background

The information above provides some basic information about what the original intention of the dataset was, but it doesn't describe how it is bieng used in this assignment, nor does it clarify very well how each of the files fits together.

![David Hood Processing Diagram](https://coursera-forum-screenshots.s3.amazonaws.com/ab/a2776024af11e4a69d5576f8bc8459/Slide2.png)

David Hood, the class TA, posted this diagram in the David's project FAQ portion of the course forumns on Saturday, September 13th 2014, 1:15 am (used by permission).  This diagram depicts how the various files within the dataset fit together.

The least intuitive portion of these datasets is that the data is positionally related.  Whether those positions are related by row, or by column, depends upon how the data is being used.  

The datasets that are row related are subject_train.txt, X_train.txt, and Y_train.txt and subject_test.txt, X_test.txt, and Y_test.txt.  Each of the "train" and "test" datasets are related by row.  This respectively shows who performed the action, the measurements collected, and what action was performed.

The datasets that are column related are features.txt and X_train.txt or X_test.txt.  The subjects file contains the 'names' of the variables appearing in each column.

The one conventional reference relates the activity_labels.txt and the Y_train.txt or Y_test.txt. The activity number stored within the train or test files can be translated to the activity label value using the number.

## Processing Steps

The order of operations from the class instructions were a bit different that the steps that I performed.  These steps are listed below and I have gone back into
the comments within the code and made sure that the step numbers match.

1. Download the zip data from the specified web site and write it locally.
2. Unzip the files and store them locally.
3. Create references to each one of the files of interest.
4. While this step didn't make it into the run_analysis file, check to see if
   all of the file dimensions match.
   + The test files should have 2947 observations.
   + The train files should have 7352 observations.
   + The features.txt file should have 561 entries corresponding to the 
     561 columns in the X_train.txt or X_test.txt files.
   + The activity_labels.txt should have 6 values and the y_train.txt or
     y_test.txt values should have matching values between 1 - 6.
   + The subject_train.txt and subject_test.txt should have values ranging from
     1 - 30.
5. Merge the corresponding training and the test sets to create one data set.
   + Merge the subject_train.txt and subject_test.txt
   + Merge the X_train.txt and X_test.txt files.
   + Merge the y_train.txt and y_test.txt files.
6. Appropriately labels the data set with descriptive variable names.  It is easy
   to add column names to the subject and y files, not so easy to apply the names
   from the featuresFile.
7. Merge the data frames that have the same number of rows by column
8. Change the numeric activity labels to there corresponding values from the
   activity_labels.txt file.
9. Extract only the measurements on the mean and standard deviation for each
   measurement. 
10. Creates a second, independent tidy data set with the average of each variable
   for each activity and each subject.
11. Write the tidy data set so that it can be uploaded to the project site.

# Output

The output is a tidy data set with the rows grouped by activity and then by the subject that performed the activity and a column containing the mean of each variable.; this means that there will be a total of 180 rows of output (6 activities by 30 subjects) with a total of 79 averages.  The codebook for the output file is located in CodeBook.md.

# Issues

## Program Design Issues

* I would like to look at some sample code to see how the programs are
        typically structured.  I purposefully kept the code into a blob to
        avoid confusing the reviewers, however it should have been broken
        into chunks, probably:  read data, merge data, label data, and process
        data.
* I decided to keep the connection between the variable names provided in
        the features file.  Based upon my reading, these are not legal names.
        I was afraid that if I did change the column names to make them legal,
        that would probably confuse the reviewers.
   + Found that the make.names function will transform the names to legal 
     column names.  
   + If I use make.names, it introduces duplicate periods and trailing periods,
     would need to figure out how to get rid of these.
* I don't think there is much value in changing the result dataset variable 
        names to clearly indicate that the output contains the mean of the
        values.  These column names are bad enough without adding additional
        confusion.
     
## R Issues

* R is very inconsistent; the base code really needs to be more consistant.
* I keep having problems with the data types.  I got all the way to the 
        end before I realized that the data should have been read as numeric
        instead of character.  It was a good thing that all the data in each
        file was of the same type.
* The R documentation should really indicate that merge doesn't guarantee
        the order of the result.  Because these files were designed to 
        positionally match contents, this could be a very bad if I didn't have
        a class message board to point out the problems.