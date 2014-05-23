#####  Programming Exercise #####
# Class:  Getting and Cleaning Data
# Assignemtn: 1
#################################

# Reading test data, train data, features list, and subject list
xTest <- read.table("x_test.txt")
yTest <- read.table("y_test.txt")
xTrain <- read.table("x_train.txt")
yTrain <- read.table("y_train.txt")
features <- read.table("features.txt")
subjectTrain <- read.table("subject_train.txt")
subjectTest <- read.table("subject_test.txt")
activities <- read.table("activity_labels.txt")

# Combine test data and train data, and subject list
xComb <- rbind(xTest,xTrain)
yComb <- rbind(yTest,yTrain)
combSubject <- rbind(subjectTest, subjectTrain)

# Set column names
colnames(xComb) <- features[,2]
colnames(yComb) <- "activity"
colnames(combSubject) <- "subject"
colnames(activities) <- c("activity", "labels")

### Create Data for question 2:
# Extracts only the measurements on the mean and standard deviation for each measurement.

# Get list of features that contains '-mean()' and '-std()'
getMeanList <- grep("-mean()", features$V2)
getStdList <- grep("-std()", features$V2)

# Combine and sort list
combList <- c(getStdList,getMeanList)
combList <- sort(combList)

# Get subset data contains mean and std features
xCombMeanStd <- xComb[,combList]

# Remove '-' and '()' from columns name
colnames(xCombMeanStd) <- gsub("-", "", names(xCombMeanStd))
colnames(xCombMeanStd) <- gsub("[()]", "", names(xCombMeanStd))

# write to file
write.table(xCombMeanStd, "mean_std_data.txt")



### Create tidyData for Question 5
# Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 

# combine x, y, and subject to create one big data
df <- cbind(combSubject, yComb, xComb)

# get the average of each variable for each activity(y) and each subject(subject)
tidyData <- aggregate(df[,3:563], df[,1:2], mean)

# map each activity with the corresponding labels
tidyData <- merge(activities, tidyData, by="activity")

# Remove '-' and '()' from columns name
colnames(tidyData) <- gsub("-", "", names(tidyData))
colnames(tidyData) <- gsub("[()]", "", names(tidyData))

# write into file
write.table(tidyData, file="tidyData.txt")

