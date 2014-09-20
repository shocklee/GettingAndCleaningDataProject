---
title: CodeBook
author: Mark Shocklee
date: "Saturday, September 20, 2014"
output: html_document
disclaimer:  This document was prepared for a class and is primarily used to demonstrate that I have some idea of what a codebook should look like.  I am not a subject matter expert on the data used for this experiment.  The descriptions of the data fields are at best guesses as to what the actual data that is recorded means.  Real knowledge from an actual subject matter expert should be used instead of presuming any knowledge on the part of the author of this document.
---

#Data Files

##getdata_projectfiles_FUCI HAR Dataset.zip 

This file was obtained from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip and was downloaded on Fri Sep 12 17:30:17 2014.  This file contains the following files:

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

Information about the study data stored within the zip file can be obtained by reading the README.txt file and additional details about this file is not reproduced in this document.  

## outputDataFile

This was the result file created by this particular activity.  The goal of this activity was to demonstrate some basic skills at cleaning the data and providing a description of what was done so that reviewers could understand what was being completed.  For a detailed explaination of the transformation process from the input to the output, the README.md file should be consulted.  There are also detailed notes in the run_analysis.R file that shows the individual R script commands that were used to make the transformation.  The run_analysis.R file should be complete and the only changes that should be necessary to run the file locally would be to modify the working directory location to reflect local preferences and/or standards.

#Data Definitions

## outputDataFile

* activity
    + Description: The six activities performed while wearing the Samsung Galaxy                                                         S II smartphone on the waist to capture the data for the experiment.
    + Data Type: character
    + Values:
        + WALKING
        + WALKING_UPSTAIRS
        + WALKING_DOWNSTAIRS
        + SITTING 
        + STANDING 
        + LAYING

* subjectIdentifier 
    + Description: The identifier corresponding to the subject that performed the activities for the experiment.
    + Data Type: number
    + Values: 1 - 30

* tBodyAcc-mean()-X
    + Description: The mean of the values collected during the experiment for the specified activity performed by the identified subject.  In this case, this is the mean of the X-axis acceleration recorded on the Samsung Galaxy S II smartphone.
    + Data Type: number

* tBodyAcc-mean()-Y 
    + Description: The mean of the values collected during the experiment for the specified activity performed by the identified subject.  In this case, this is the mean of the Y-axis acceleration recorded on the Samsung Galaxy S II smartphone.
    + Data Type: number

* tBodyAcc-mean()-Z
    + Description: The mean of the values collected during the experiment for the specified activity performed by the identified subject.  In this case, this is the mean of the Z-axis acceleration recorded on the Samsung Galaxy S II smartphone.
    + Data Type: number

* tBodyAcc-std()-X 
    + Description: The mean of the values collected during the experiment for the specified activity performed by the identified subject.  In this case, this is the standard deviation of the X-axis acceleration recorded on the Samsung Galaxy S II smartphone.
    + Data Type: number

* tBodyAcc-std()-Y
    + Description: The mean of the values collected during the experiment for the specified activity performed by the identified subject.  In this case, this is the standard deviation of the Y-axis acceleration recorded on the Samsung Galaxy S II smartphone.
    + Data Type: number

* tBodyAcc-std()-Z
    + Description: The mean of the values collected during the experiment for the specified activity performed by the identified subject.  In this case, this is the standard deviation of the Z-axis acceleration recorded on the Samsung Galaxy S II smartphone.
    + Data Type: number

* tGravityAcc-mean()-X
    + Description: The mean of the values collected during the experiment for the specified activity performed by the identified subject.  In this case, this is the mean of the X-axis acceleration recorded on the Samsung Galaxy S II smartphone in standard gravity units.
    + Data Type: number

* tGravityAcc-mean()-Y          
    + Description: The mean of the values collected during the experiment for the specified activity performed by the identified subject.  In this case, this is the mean of the Y-axis acceleration recorded on the Samsung Galaxy S II smartphone in standard gravity units.
    + Data Type: number

* tGravityAcc-mean()-Z
    + Description: The mean of the values collected during the experiment for the specified activity performed by the identified subject.  In this case, this is the mean of the Z-axis acceleration recorded on the Samsung Galaxy S II smartphone in standard gravity units.
    + Data Type: number

* tGravityAcc-std()-X          
    + Description: The mean of the values collected during the experiment for the specified activity performed by the identified subject.  In this case, this is the standard deviation of the X-axis acceleration recorded on the Samsung Galaxy S II smartphone in standard gravity units.
    + Data Type: number

* tGravityAcc-std()-Y
    + Description: The mean of the values collected during the experiment for the specified activity performed by the identified subject.  In this case, this is the standard deviation of the Y-axis acceleration recorded on the Samsung Galaxy S II smartphone in standard gravity units.
    + Data Type: number

* tGravityAcc-std()-Z      
    + Description: The mean of the values collected during the experiment for the specified activity performed by the identified subject.  In this case, this is the standard deviation of the Z-axis acceleration recorded on the Samsung Galaxy S II smartphone in standard gravity units.
    + Data Type: number

* tBodyAccJerk-mean()-X
    + Description: The mean of the values collected during the experiment for the specified activity performed by the identified subject.  In this case, this is the mean of the X-axis acceleration jerk recorded on the Samsung Galaxy S II smartphone.
    + Data Type: number

* tBodyAccJerk-mean()-Y  
    + Description: The mean of the values collected during the experiment for the specified activity performed by the identified subject.  In this case, this is the mean of the Y-axis acceleration jerk recorded on the Samsung Galaxy S II smartphone.
    + Data Type: number

* tBodyAccJerk-mean()-Z
    + Description: The mean of the values collected during the experiment for the specified activity performed by the identified subject.  In this case, this is the mean of the Z-axis acceleration jerk recorded on the Samsung Galaxy S II smartphone.
    + Data Type: number

* tBodyAccJerk-std()-X      
    + Description: The mean of the values collected during the experiment for the specified activity performed by the identified subject.  In this case, this is the standard deviation of the X-axis acceleration jerk recorded on the Samsung Galaxy S II smartphone.
    + Data Type: number

* tBodyAccJerk-std()-Y
    + Description: The mean of the values collected during the experiment for the specified activity performed by the identified subject.  In this case, this is the standard deviation of the Y-axis acceleration jerk recorded on the Samsung Galaxy S II smartphone.
    + Data Type: number

* tBodyAccJerk-std()-Z      
    + Description: The mean of the values collected during the experiment for the specified activity performed by the identified subject.  In this case, this is the standard deviation of the Z-axis acceleration jerk recorded on the Samsung Galaxy S II smartphone.
    + Data Type: number

* tBodyGyro-mean()-X
    + Description: The mean of the values collected during the experiment for the specified activity performed by the identified subject.  In this case, this is the mean of the X-axis gyroscope recorded on the Samsung Galaxy S II smartphone.
    + Data Type: number

* tBodyGyro-mean()-Y    
    + Description: The mean of the values collected during the experiment for the specified activity performed by the identified subject.  In this case, this is the mean of the Y-axis gyroscope recorded on the Samsung Galaxy S II smartphone.
    + Data Type: number

* tBodyGyro-mean()-Z
    + Description: The mean of the values collected during the experiment for the specified activity performed by the identified subject.  In this case, this is the mean of the Z-axis gyroscope recorded on the Samsung Galaxy S II smartphone.
    + Data Type: number

* tBodyGyro-std()-X      
    + Description: The mean of the values collected during the experiment for the specified activity performed by the identified subject.  In this case, this is the standard deviation of the X-axis gyroscope recorded on the Samsung Galaxy S II smartphone.
    + Data Type: number

* tBodyGyro-std()-Y
    + Description: The mean of the values collected during the experiment for the specified activity performed by the identified subject.  In this case, this is the standard deviation of the Y-axis gyroscope recorded on the Samsung Galaxy S II smartphone.
    + Data Type: number

* tBodyGyro-std()-Z   
    + Description: The mean of the values collected during the experiment for the specified activity performed by the identified subject.  In this case, this is the standard deviation of the Z-axis gyroscope recorded on the Samsung Galaxy S II smartphone.
    + Data Type: number

* tBodyGyroJerk-mean()-X
    + Description: The mean of the values collected during the experiment for the specified activity performed by the identified subject.  In this case, this is the mean of the X-axis gyroscope jerk recorded on the Samsung Galaxy S II smartphone.
    + Data Type: number

* tBodyGyroJerk-mean()-Y      
    + Description: The mean of the values collected during the experiment for the specified activity performed by the identified subject.  In this case, this is the mean of the Y-axis gyroscope jerk recorded on the Samsung Galaxy S II smartphone.
    + Data Type: number

* tBodyGyroJerk-mean()-Z
    + Description: The mean of the values collected during the experiment for the specified activity performed by the identified subject.  In this case, this is the mean of the Z-axis gyroscope jerk recorded on the Samsung Galaxy S II smartphone.
    + Data Type: number

* tBodyGyroJerk-std()-X    
    + Description: The mean of the values collected during the experiment for the specified activity performed by the identified subject.  In this case, this is the standard deviation of the X-axis gyroscope jerk recorded on the Samsung Galaxy S II smartphone.
    + Data Type: number

* tBodyGyroJerk-std()-Y
    + Description: The mean of the values collected during the experiment for the specified activity performed by the identified subject.  In this case, this is the standard deviation of the Y-axis gyroscope jerk recorded on the Samsung Galaxy S II smartphone.
    + Data Type: number

* tBodyGyroJerk-std()-Z    
    + Description: The mean of the values collected during the experiment for the specified activity performed by the identified subject.  In this case, this is the standard deviation of the Z-axis gyroscope jerk recorded on the Samsung Galaxy S II smartphone.
    + Data Type: number

* tBodyAccMag-mean()
    + Description: The mean of the values collected during the experiment for the specified activity performed by the identified subject.  In this case, this is the mean of the recording by the accelerometer magnetometer recorded on the Samsung Galaxy S II smartphone.
    + Data Type: number

* tBodyAccMag-std()     
    + Description: The mean of the values collected during the experiment for the specified activity performed by the identified subject.  In this case, this is the standard deviation of the recording by the accelerometer magnetometer recorded on the Samsung Galaxy S II smartphone.
    + Data Type: number

* tGravityAccMag-mean()
    + Description: The mean of the values collected during the experiment for the specified activity performed by the identified subject.  In this case, this is the mean of the recording by the accelerometer magnetometer recorded on the Samsung Galaxy S II smartphone in standard gravity units.
    + Data Type: number

* tGravityAccMag-std()      
    + Description: The mean of the values collected during the experiment for the specified activity performed by the identified subject.  In this case, this is the standard deviation of the recording by the accelerometer magnetometer recorded on the Samsung Galaxy S II smartphone in standard gravity units.
    + Data Type: number

* tBodyAccJerkMag-mean()
    + Description: The mean of the values collected during the experiment for the specified activity performed by the identified subject.  In this case, this is the mean of the jerk recording by the accelerometer magnetometer recorded on the Samsung Galaxy S II smartphone.
    + Data Type: number
    
* tBodyAccJerkMag-std() 
    + Description: The mean of the values collected during the experiment for the specified activity performed by the identified subject.  In this case, this is the standard deviation of the jerk recording by the accelerometer magnetometer recorded on the Samsung Galaxy S II smartphone.
    + Data Type: number

* tBodyGyroMag-mean()
    + Description: The mean of the values collected during the experiment for the specified activity performed by the identified subject.  In this case, this is the mean of the recording by the gyroscopic magnetometer recorded on the Samsung Galaxy S II smartphone.
    + Data Type: number

* tBodyGyroMag-std()    
    + Description: The mean of the values collected during the experiment for the specified activity performed by the identified subject.  In this case, this is the standard deviation of the recording by the gyroscopic magnetometer recorded on the Samsung Galaxy S II smartphone.
    + Data Type: number

* tBodyGyroJerkMag-mean()
    + Description: The mean of the values collected during the experiment for the specified activity performed by the identified subject.  In this case, this is the mean of the jerk recording by the gyroscopic magnetometer recorded on the Samsung Galaxy S II smartphone.
    + Data Type: number

* tBodyGyroJerkMag-std()    
    + Description: The mean of the values collected during the experiment for the specified activity performed by the identified subject.  In this case, this is the standard deviation of the jerk recording by the gyroscopic magnetometer recorded on the Samsung Galaxy S II smartphone.
    + Data Type: number

* fBodyAcc-mean()-X
    + Description: The mean of the values collected during the experiment for the specified activity performed by the identified subject.  In this case, this is the mean of the X-axis body acceleration recorded on the Samsung Galaxy S II smartphone.
    + Data Type: number

* fBodyAcc-mean()-Y    
    + Description: The mean of the values collected during the experiment for the specified activity performed by the identified subject.  In this case, this is the mean of the Y-axis body acceleration recorded on the Samsung Galaxy S II smartphone.
    + Data Type: number

* fBodyAcc-mean()-Z
    + Description: The mean of the values collected during the experiment for the specified activity performed by the identified subject.  In this case, this is the mean of the Z-axis body acceleration recorded on the Samsung Galaxy S II smartphone.
    + Data Type: number

* fBodyAcc-std()-X      
    + Description: The mean of the values collected during the experiment for the specified activity performed by the identified subject.  In this case, this is the standard deviation of the X-axis body acceleration recorded on the Samsung Galaxy S II smartphone.
    + Data Type: number

* fBodyAcc-std()-Y
    + Description: The mean of the values collected during the experiment for the specified activity performed by the identified subject.  In this case, this is the standard deviation of the Y-axis body acceleration recorded on the Samsung Galaxy S II smartphone.
    + Data Type: number

* fBodyAcc-std()-Z        
    + Description: The mean of the values collected during the experiment for the specified activity performed by the identified subject.  In this case, this is the standard deviation of the Z-axis body acceleration recorded on the Samsung Galaxy S II smartphone.
    + Data Type: number

* fBodyAcc-meanFreq()-X
    + Description: The mean of the values collected during the experiment for the specified activity performed by the identified subject.  In this case, this is the mean of the frequency of X-axis body acceleration recorded on the Samsung Galaxy S II smartphone.
    + Data Type: number

* fBodyAcc-meanFreq()-Y    
    + Description: The mean of the values collected during the experiment for the specified activity performed by the identified subject.  In this case, this is the mean of the frequency of Y-axis body acceleration recorded on the Samsung Galaxy S II smartphone.
    + Data Type: number

* fBodyAcc-meanFreq()-Z
    + Description: The mean of the values collected during the experiment for the specified activity performed by the identified subject.  In this case, this is the mean of the frequency of Z-axis body acceleration recorded on the Samsung Galaxy S II smartphone.
    + Data Type: number

* fBodyAccJerk-mean()-X     
    + Description: The mean of the values collected during the experiment for the specified activity performed by the identified subject.  In this case, this is the mean of the jerk of X-axis body acceleration recorded on the Samsung Galaxy S II smartphone.
    + Data Type: number

* fBodyAccJerk-mean()-Y
    + Description: The mean of the values collected during the experiment for the specified activity performed by the identified subject.  In this case, this is the mean of the jerk of Y-axis body acceleration recorded on the Samsung Galaxy S II smartphone.
    + Data Type: number

* fBodyAccJerk-mean()-Z       
    + Description: The mean of the values collected during the experiment for the specified activity performed by the identified subject.  In this case, this is the mean of the jerk of Z-axis body acceleration recorded on the Samsung Galaxy S II smartphone.
    + Data Type: number

* fBodyAccJerk-std()-X
    + Description: The mean of the values collected during the experiment for the specified activity performed by the identified subject.  In this case, this is the standard deviation of the jerk of X-axis body acceleration recorded on the Samsung Galaxy S II smartphone.
    + Data Type: number

* fBodyAccJerk-std()-Y      
    + Description: The mean of the values collected during the experiment for the specified activity performed by the identified subject.  In this case, this is the standard deviation of the jerk of Y-axis body acceleration recorded on the Samsung Galaxy S II smartphone.
    + Data Type: number

* fBodyAccJerk-std()-Z
    + Description: The mean of the values collected during the experiment for the specified activity performed by the identified subject.  In this case, this is the standard deviation of the jerk of Z-axis body acceleration recorded on the Samsung Galaxy S II smartphone.
    + Data Type: number

* fBodyAccJerk-meanFreq()-X   
    + Description: The mean of the values collected during the experiment for the specified activity performed by the identified subject.  In this case, this is the mean frequency of the jerk of X-axis body acceleration recorded on the Samsung Galaxy S II smartphone.
    + Data Type: number

* fBodyAccJerk-meanFreq()-Y
    + Description: The mean of the values collected during the experiment for the specified activity performed by the identified subject.  In this case, this is the mean frequency of the jerk of Y-axis body acceleration recorded on the Samsung Galaxy S II smartphone.
    + Data Type: number

* fBodyAccJerk-meanFreq()-Z   
    + Description: The mean of the values collected during the experiment for the specified activity performed by the identified subject.  In this case, this is the mean frequency of the jerk of Z-axis body acceleration recorded on the Samsung Galaxy S II smartphone.
    + Data Type: number

* fBodyGyro-mean()-X
    + Description: The mean of the values collected during the experiment for the specified activity performed by the identified subject.  In this case, this is the mean of the X-axis body gyroscopic acceleration recorded on the Samsung Galaxy S II smartphone.
    + Data Type: number

* fBodyGyro-mean()-Y    
    + Description: The mean of the values collected during the experiment for the specified activity performed by the identified subject.  In this case, this is the mean of the Y-axis body gyroscopic acceleration recorded on the Samsung Galaxy S II smartphone.
    + Data Type: number

* fBodyGyro-mean()-Z
    + Description: The mean of the values collected during the experiment for the specified activity performed by the identified subject.  In this case, this is the mean of the Z-axis body gyroscopic acceleration recorded on the Samsung Galaxy S II smartphone.
    + Data Type: number

* fBodyGyro-std()-X       
    + Description: The mean of the values collected during the experiment for the specified activity performed by the identified subject.  In this case, this is the standard deviation of the X-axis body gyroscopic acceleration recorded on the Samsung Galaxy S II smartphone.
    + Data Type: number

* fBodyGyro-std()-Y
    + Description: The mean of the values collected during the experiment for the specified activity performed by the identified subject.  In this case, this is the standard deviation of the Y-axis body gyroscopic acceleration recorded on the Samsung Galaxy S II smartphone.
    + Data Type: number

* fBodyGyro-std()-Z       
    + Description: The mean of the values collected during the experiment for the specified activity performed by the identified subject.  In this case, this is the standard deviation of the Z-axis body gyroscopic acceleration recorded on the Samsung Galaxy S II smartphone.
    + Data Type: number

* fBodyGyro-meanFreq()-X
    + Description: The mean of the values collected during the experiment for the specified activity performed by the identified subject.  In this case, this is the mean frequency of the X-axis body gyroscopic acceleration recorded on the Samsung Galaxy S II smartphone.
    + Data Type: number

* fBodyGyro-meanFreq()-Y  
    + Description: The mean of the values collected during the experiment for the specified activity performed by the identified subject.  In this case, this is the mean frequency of the Y-axis body gyroscopic acceleration recorded on the Samsung Galaxy S II smartphone.
    + Data Type: number

* fBodyGyro-meanFreq()-Z
    + Description: The mean of the values collected during the experiment for the specified activity performed by the identified subject.  In this case, this is the mean frequency of the Z-axis body gyroscopic acceleration recorded on the Samsung Galaxy S II smartphone.
    + Data Type: number

* fBodyAccMag-mean()
    + Description: The mean of the values collected during the experiment for the specified activity performed by the identified subject.  In this case, this is the mean of the body acceleration magnetometer recorded on the Samsung Galaxy S II smartphone.
    + Data Type: number

* fBodyAccMag-std()
    + Description: The mean of the values collected during the experiment for the specified activity performed by the identified subject.  In this case, this is the standard deviation of the body acceleration magnetometer recorded on the Samsung Galaxy S II smartphone.
    + Data Type: number

* fBodyAccMag-meanFreq()        
    + Description: The mean of the values collected during the experiment for the specified activity performed by the identified subject.  In this case, this is the mean of the frequency of the body acceleration magnetometer recorded on the Samsung Galaxy S II smartphone.
    + Data Type: number

* fBodyBodyAccJerkMag-mean()
    + Description: The mean of the values collected during the experiment for the specified activity performed by the identified subject.  In this case, this is the mean of jerk of the body acceleration magnetometer recorded on the Samsung Galaxy S II smartphone.
    + Data Type: number

* fBodyBodyAccJerkMag-std()      
    + Description: The mean of the values collected during the experiment for the specified activity performed by the identified subject.  In this case, this is the standard deviation of jerk of the body acceleration magnetometer recorded on the Samsung Galaxy S II smartphone.
    + Data Type: number

* fBodyBodyAccJerkMag-meanFreq()
    + Description: The mean of the values collected during the experiment for the specified activity performed by the identified subject.  In this case, this is the mean of the frequency of the jerk of the body acceleration magnetometer recorded on the Samsung Galaxy S II smartphone.
    + Data Type: number

* fBodyBodyGyroMag-mean()  
    + Description: The mean of the values collected during the experiment for the specified activity performed by the identified subject.  In this case, this is the mean of the body acceleration gyroscopic magnetometer recorded on the Samsung Galaxy S II smartphone.
    + Data Type: number

* fBodyBodyGyroMag-std()
    + Description: The mean of the values collected during the experiment for the specified activity performed by the identified subject.  In this case, this is the standard deviation of the body acceleration gyroscopic magnetometer recorded on the Samsung Galaxy S II smartphone.
    + Data Type: number

* fBodyBodyGyroMag-meanFreq() 
    + Description: The mean of the values collected during the experiment for the specified activity performed by the identified subject.  In this case, this is the mean of the frequency recorded by the body acceleration gyroscopic magnetometer recorded on the Samsung Galaxy S II smartphone.
    + Data Type: number

* fBodyBodyGyroJerkMag-mean()
    + Description: The mean of the values collected during the experiment for the specified activity performed by the identified subject.  In this case, this is the mean of the jerk of the frequency recorded by the body acceleration gyroscopic magnetometer recorded on the Samsung Galaxy S II smartphone.
    + Data Type: number

* fBodyBodyGyroJerkMag-std()
    + Description: The mean of the values collected during the experiment for the specified activity performed by the identified subject.  In this case, this is the standard deviation of the jerk recorded by the body acceleration gyroscopic magnetometer recorded on the Samsung Galaxy S II smartphone.
    + Data Type: number

* fBodyBodyGyroJerkMag-meanFreq()
    + Description: The mean of the values collected during the experiment for the specified activity performed by the identified subject.  In this case, this is the mean freqency of the jerk recorded by the body acceleration gyroscopic magnetometer recorded on the Samsung Galaxy S II smartphone
    + Data Type: number