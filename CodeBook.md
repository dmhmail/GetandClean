CodeBook for the tidy dataset
=============================
Data source
-----------

This dataset is derived from the "Human Activity Recognition Using Smartphones Data Set" which was originally made avaiable here: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
The data used for this tidy dataset was pulled from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip as part of the Coursera Getting and Cleaning Data class.

Feature Selection
-----------------

The folling quotation (cited below) is from the Samsung site to describe the technical aspects of the data.
"The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain." 

The fields selected for the tidy dataset were selected for the purpose of gathering summarized information. Only the Mean and Standard Deviation fields were sewlected for the final tidy dataset.

The following fields were kept in the tidy dataset to get a Mean of the Mean and Standard Deviation fields.
In addition, the punctuation fields and dashes were removed and the field names converted to lower case in order to make the field more user friendly to use the tidy data.
The following fields names were kept in the tidy dataset:

Field Name | Field Reference
---------- | ---------------
activity | The activity performed by the subject (participant)
subject | The subject (participant)
tbodyaccmeanx | Technical variable defined on website.
tbodyaccmeany | Technical variable defined on website.
tbodyaccmeanz | Technical variable defined on website.
tbodyaccstdx | Technical variable defined on website.
tbodyaccstdy | Technical variable defined on website.
tbodyaccstdz | Technical variable defined on website.
tgravityaccmeanx | Technical variable defined on website.
tgravityaccmeany | Technical variable defined on website.
tgravityaccmeanz | Technical variable defined on website.
tgravityaccstdx | Technical variable defined on website.
tgravityaccstdy | Technical variable defined on website.
tgravityaccstdz | Technical variable defined on website.
tbodyaccjerkmeanx | Technical variable defined on website.
tbodyaccjerkmeany | Technical variable defined on website.
tbodyaccjerkmeanz | Technical variable defined on website.
tbodyaccjerkstdx | Technical variable defined on website.
tbodyaccjerkstdy | Technical variable defined on website.
tbodyaccjerkstdz | Technical variable defined on website.
tbodygyromeanx | Technical variable defined on website.
tbodygyromeany | Technical variable defined on website.
tbodygyromeanz | Technical variable defined on website.
tbodygyrostdx | Technical variable defined on website.
tbodygyrostdy | Technical variable defined on website.
tbodygyrostdz | Technical variable defined on website.
tbodygyrojerkmeanx | Technical variable defined on website.
tbodygyrojerkmeany | Technical variable defined on website.
tbodygyrojerkmeanz | Technical variable defined on website.
tbodygyrojerkstdx | Technical variable defined on website.
tbodygyrojerkstdy | Technical variable defined on website.
tbodygyrojerkstdz | Technical variable defined on website.
tbodyaccmagmean | Technical variable defined on website.
tbodyaccmagstd | Technical variable defined on website.
tgravityaccmagmean | Technical variable defined on website.
tgravityaccmagstd | Technical variable defined on website.
tbodyaccjerkmagmean | Technical variable defined on website.
tbodyaccjerkmagstd | Technical variable defined on website.
tbodygyromagmean | Technical variable defined on website.
tbodygyromagstd | Technical variable defined on website.
tbodygyrojerkmagmean | Technical variable defined on website.
tbodygyrojerkmagstd | Technical variable defined on website.
fbodyaccmeanx | Technical variable defined on website.
fbodyaccmeany | Technical variable defined on website.
fbodyaccmeanz | Technical variable defined on website.
fbodyaccstdx | Technical variable defined on website.
fbodyaccstdy | Technical variable defined on website.
fbodyaccstdz | Technical variable defined on website.
fbodyaccjerkmeanx | Technical variable defined on website.
fbodyaccjerkmeany | Technical variable defined on website.
fbodyaccjerkmeanz | Technical variable defined on website.
fbodyaccjerkstdx | Technical variable defined on website.
fbodyaccjerkstdy | Technical variable defined on website.
fbodyaccjerkstdz | Technical variable defined on website.
fbodygyromeanx | Technical variable defined on website.
fbodygyromeany | Technical variable defined on website.
fbodygyromeanz | Technical variable defined on website.
fbodygyrostdx | Technical variable defined on website.
fbodygyrostdy | Technical variable defined on website.
fbodygyrostdz | Technical variable defined on website.
fbodyaccmagmean | Technical variable defined on website.
fbodyaccmagstd | Technical variable defined on website.
fbodybodyaccjerkmagmean | Technical variable defined on website.
fbodybodyaccjerkmagstd | Technical variable defined on website.
fbodybodygyromagmean | Technical variable defined on website.
fbodybodygyromagstd | Technical variable defined on website.
fbodybodygyrojerkmagmean | Technical variable defined on website.
fbodybodygyrojerkmagstd | Technical variable defined on website.

The set of variables that were estimated (and kept for this assignment) from these signals are:

    mean(): Mean value
    std(): Standard deviation

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable, were not kept in the tidy data.



Citation:
---------

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012