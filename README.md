Getting and Cleaning Data: Course Project
=========================================
Introduction
------------

This repository contains my work for the course project for the Coursera course "Getting and Cleaning data". The following information is what I have gathered concerning the original summarization of the raw data. Only a portion of the raw data provided was used to generate a tidy dataset.
About the raw data

There were 561 features provided in 2 raw summarized source files with no header information named x_test.txt and x_train.txt. The 2 files were in the same format of 561 features (or fields).
The corresponding feature label names were provided in the features.txt file with a respective layout to the feature values as column titles. The corresponding subject members for each row of measurement data was provided in the subject_test.txt and subject_train.txt files.
This file was aligned respective to the rows in the measurement data to identify each row with the subject that the data was gathered from for the measurement. The next source files used were the y_test.txt and y_train.txt files.
These files were too aligned respective to the rows in the measurement data to identify the activity that the subject was performing at the time the data was gathered. 
The last file used (activity_labels.txt) was a cross reference file that identified the activity codes to the actual activity performed (ex "WALKING", "STANDING", etc). The key value for these activities was used to join the activity description. to each row based on matching the key value for the activity with the activity key value provided in the y_test.txt and y_train.txt files.
A comma delimited file named combinedData.csv was written once all of these files were combined and before anydata fields were removed or summarized for the tidy dataset.


About the script and the tidy dataset
-------------------------------------

The script run_analysis.R was created to combine the testing and training data together with the activities and subjects to create a tidy dataset. Prerequisites for this script:

    the UCI HAR Dataset must be downloaded and extracted from the zip file provided and..
    the UCI HAR Dataset must be available in the working directory and unzipped into "getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset".

The testing and training data were combined and given the labels, activities, and subjects. The data was then written into a combined raw file for creating the tidy dataset. 
When reducing the number of columns for the tidy dataset, only the fields with mean ("mean()") or standard deviation ("std()") were kept.

The final steps of the script will create a tidy data set containing the means of the mean and standard deviation fields grouped per activity and test subject as worded in the requirements. This tidy dataset will be written to a comma delimited file named tidy.txt, which can also be found in this repository.
About the Code Book

The CodeBook.md file explains the transformations performed and the resulting data and variables.