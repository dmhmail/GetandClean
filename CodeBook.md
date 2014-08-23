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
tbodyaccmeanx | Technical measurement variable.
tbodyaccmeany | Technical measurement variable.
tbodyaccmeanz | Technical measurement variable.
tbodyaccstdx | Technical measurement variable.
tbodyaccstdy | Technical measurement variable.
tbodyaccstdz | Technical measurement variable.
tgravityaccmeanx | Technical measurement variable.
tgravityaccmeany | Technical measurement variable.
tgravityaccmeanz | Technical measurement variable.
tgravityaccstdx | Technical measurement variable.
tgravityaccstdy | Technical measurement variable.
tgravityaccstdz | Technical measurement variable.
tbodyaccjerkmeanx | Technical measurement variable.
tbodyaccjerkmeany | Technical measurement variable.
tbodyaccjerkmeanz | Technical measurement variable.
tbodyaccjerkstdx | Technical measurement variable.
tbodyaccjerkstdy | Technical measurement variable.
tbodyaccjerkstdz | Technical measurement variable.
tbodygyromeanx | Technical measurement variable.
tbodygyromeany | Technical measurement variable.
tbodygyromeanz | Technical measurement variable.
tbodygyrostdx | Technical measurement variable.
tbodygyrostdy | Technical measurement variable.
tbodygyrostdz | Technical measurement variable.
tbodygyrojerkmeanx | Technical measurement variable.
tbodygyrojerkmeany | Technical measurement variable.
tbodygyrojerkmeanz | Technical measurement variable.
tbodygyrojerkstdx | Technical measurement variable.
tbodygyrojerkstdy | Technical measurement variable.
tbodygyrojerkstdz | Technical measurement variable.
tbodyaccmagmean | Technical measurement variable.
tbodyaccmagstd | Technical measurement variable.
tgravityaccmagmean | Technical measurement variable.
tgravityaccmagstd | Technical measurement variable.
tbodyaccjerkmagmean | Technical measurement variable.
tbodyaccjerkmagstd | Technical measurement variable.
tbodygyromagmean | Technical measurement variable.
tbodygyromagstd | Technical measurement variable.
tbodygyrojerkmagmean | Technical measurement variable.
tbodygyrojerkmagstd | Technical measurement variable.
fbodyaccmeanx | Technical measurement variable.
fbodyaccmeany | Technical measurement variable.
fbodyaccmeanz | Technical measurement variable.
fbodyaccstdx | Technical measurement variable.
fbodyaccstdy | Technical measurement variable.
fbodyaccstdz | Technical measurement variable.
fbodyaccjerkmeanx | Technical measurement variable.
fbodyaccjerkmeany | Technical measurement variable.
fbodyaccjerkmeanz | Technical measurement variable.
fbodyaccjerkstdx | Technical measurement variable.
fbodyaccjerkstdy | Technical measurement variable.
fbodyaccjerkstdz | Technical measurement variable.
fbodygyromeanx | Technical measurement variable.
fbodygyromeany | Technical measurement variable.
fbodygyromeanz | Technical measurement variable.
fbodygyrostdx | Technical measurement variable.
fbodygyrostdy | Technical measurement variable.
fbodygyrostdz | Technical measurement variable.
fbodyaccmagmean | Technical measurement variable.
fbodyaccmagstd | Technical measurement variable.
fbodybodyaccjerkmagmean | Technical measurement variable.
fbodybodyaccjerkmagstd | Technical measurement variable.
fbodybodygyromagmean | Technical measurement variable.
fbodybodygyromagstd | Technical measurement variable.
fbodybodygyrojerkmagmean | Technical measurement variable.
fbodybodygyrojerkmagstd | Technical measurement variable.

The set of variables that were estimated (and kept for this assignment) from these signals are:

    mean(): Mean value
    std(): Standard deviation

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable, were not kept in the tidy data.



Citation:
---------

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012