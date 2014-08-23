# Set a directory path if data is not in the working directory.
filepath <- "Training/Getting and Cleaning Data/Final Project/"
if (!file.exists("Training")){
        filepath <- ""
}

#Create a table with the features which will become column names
data_features <- read.table(paste(filepath,"getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/features.txt", sep=""),header = FALSE, sep=" ")
#Create a table with the activites which will be used to decode the activity names.
data_activities <- read.table(paste(filepath,"getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/activity_labels.txt", sep=""),header = FALSE, sep=" ")

#Create a table of the subject in the test group
subj_test <- read.table(paste(filepath,"getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/test/subject_test.txt", sep=""),header = FALSE, colClasses = character())
#Create a table of the activities the subject in the test group performed
y_test <- read.table(paste(filepath,"getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/test/y_test.txt", sep=""),header = FALSE, colClasses = numeric())
#Create a table of the provided observation summaries of the test group
x_test <- read.table(paste(filepath,"getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/test/X_test.txt", sep=""),header = FALSE, colClasses = numeric())
#Set the column names for the observations to the test group
colnames(x_test) <- data_features[ , 2]
#add the subject number to the data frame for the test group
x_test$subject <- subj_test[ , 1]
#add the activity type code to the data frame for the test group
x_test$activity_cd <- y_test[, 1]
#add the activty description to the data frame for the test group
x_test$activity = data_activities[x_test$activity_cd, 2]

#Create a table of the subject in the training group
subj_train <- read.table(paste(filepath,"getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/train/subject_train.txt", sep=""),header = FALSE, colClasses = character())
#Create a table of the activities the subject in the training group performed
y_train <- read.table(paste(filepath,"getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/train/y_train.txt", sep=""),header = FALSE, colClasses = numeric())
#Create a table of the provided observation summaries of the training group
x_train <- read.table(paste(filepath,"getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/train/X_train.txt", sep=""),header = FALSE, colClasses = numeric())
#Set the column names for the observations to the training group
colnames(x_train) <- data_features[ , 2]
#add the subject number to the data frame for the training group
x_train$subject <- subj_train[ , 1]
#add the activity type code to the data frame for the training group
x_train$activity_cd <- y_train[, 1]
#add the activty description to the data frame for the training group
x_train$activity = data_activities[x_train$activity_cd, 2]

# 1. Combine the Training and Test data frames. Use Training data frame so less data is added
x_train <- rbind(x_train, x_test)

#Unload raw file here
write.table(x_train, file = paste(filepath,"combinedData.txt", sep=""), append = FALSE, quote = TRUE, sep = ",",
            eol = "\n", na = "NA", dec = ".", row.names = FALSE,
            col.names = TRUE, qmethod = c("escape", "double"))

# 2. and 3. reduce data for Tidy data
#Create vector of current column names
d1 <- names(x_train)
#Create a pattern for use in selecting only mean() and std() columns
grx <- glob2rx("*mean()|std()*")
#Create vector of filtered column names
g1 <- grep(grx, d1, value = TRUE, ignore.case = TRUE)

#Create a data frame that is a subset of combined data with only the required columns
#x_train_sub <- x_train[c(g1,"activity","subject")]
x_train_sub <- x_train[c(g1,"subject","activity")]

# 3. and 4. Remove special characters from column names
names(x_train_sub) <- gsub('([[:punct:]])|\\s+','',names(x_train_sub))
#convert all column names to lowercase
names(x_train_sub) <- sapply(names(x_train_sub), function(x) tolower(x))

#Use the reshape package
library(reshape)

# 5. Create a data frame using the Melt function so the data can be cast
#actMelt <- melt(x_train_sub,id=c("subject","activity"),)
actMelt <- melt(x_train_sub,id=c("activity","subject"),)
#Use the reshape2 package
library(reshape2)
#Create a cast function that will format the Tidy Data
#actData <- dcast(actMelt, subject + activity ~ variable,mean)
actData <- dcast(actMelt, activity + subject  ~ variable,mean)
#Create the Tidy Data data frame
tidyData = actData

#write Tidy data set
write.table(tidyData, file = paste(filepath,"tidy.txt", sep=""), append = FALSE, quote = TRUE, sep = ",",
            eol = "\n", na = "NA", dec = ".", row.names = FALSE,
            col.names = TRUE, qmethod = c("escape", "double"))
