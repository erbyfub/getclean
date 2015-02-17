## Load variable names
setwd("./UCI HAR Dataset")
features <- readLines("features.txt")
features <- sub("[0-9]+ ","",features) ## remove feature numbers

## Load test data
setwd("./UCI HAR Dataset/test")
## activities: 1 WALKING, 2 WALKING_UPSTAIRS, 3 WALKING_DOWNSTAIRS, 4 SITTING, 5 STANDING, 6 LAYING
activities <- readLines("y_test.txt")
subjects <- readLines("subject_test.txt")
data <- read.table("X_test.txt", col.names=features)

## Don't run this yet
## replace activities with activity names
## activities <- sub("1","Walking",activities)
##activities <- sub("2","WalkUpStairs",activities)
##activities <- sub("3","WalkDownStairs",activities)
#activities <- sub("4","Sitting",activities)
#activities <- sub("5","Standing",activities)
#activities <- sub("6","Lying",activities)

## add activities and subjects to beginning of test data frame
library(dplyr)
data$subject <- subjects
data$activity <- activities
testdata <- select(data, subject, activity, 1:561)

## Now for the training set
## Load training data
setwd("../train")
## activities: 1 WALKING, 2 WALKING_UPSTAIRS, 3 WALKING_DOWNSTAIRS, 4 SITTING, 5 STANDING, 6 LAYING
activities2 <- readLines("y_train.txt")
subjects2 <- readLines("subject_train.txt")
data2 <- read.table("X_train.txt", col.names=features)

## replace activities with activity names
#activities2 <- sub("1","Walking",activities2)
#activities2 <- sub("2","WalkUpStairs",activities2)
#activities2 <- sub("3","WalkDownStairs",activities2)
#activities2 <- sub("4","Sitting",activities2)
#activities2 <- sub("5","Standing",activities2)
#activities2 <- sub("6","Lying",activities2)

## add activities and subjects to beginning of training data frame
library(dplyr)
data2$subject <- subjects2
data2$activity <- activities2
traindata <- select(data2, subject, activity, 1:561)

## Remove extra variables
rm(data,data2,activities,activities2,subjects,subjects2)

## Combine data from test and training data frames into new data frame
alldata <- testdata
alldata[2948:10299,] <- traindata
alldata$subject <- as.numeric(alldata$subject)
alldata$activity <- as.numeric(alldata$activity)

## Remove variables that do not contain "mean" or "std"
## Find variables that do contain these
means <- grep("mean\\(\\)",features)+2
stds <- grep("std\\(\\)",features)+2
meanstds <- append(means,stds)
meanstds <- sort(meanstds)
## Remove everything else
allmeans <- select(alldata,1,2,meanstds)

## Give variables descriptive names
vars <- names(allmeans)
vars <- gsub("\\.","",vars)
vars <- sub("Y","yaxis",vars)
vars <- sub("X","xaxis",vars)
vars <- sub("Z","zaxis",vars)
vars <- sub("tBody","timebody",vars)
vars <- sub("tGravity","timegravity",vars)
vars <- sub("fBody","frequencybody",vars)
vars <- gsub("Body","body",vars)
vars <- sub("Acc","accelerometer",vars)
vars <- sub("Gyro","gyroscope",vars)
vars <- sub("Jerk","jerk",vars)
vars <- sub("Mag","magnitude",vars)
names(allmeans) <- vars

## Tidy up
rm(testdata,traindata,alldata,features,means,meanstds,stds,vars)

## Create tidy table for each subject and activity with means for each variable
## Split data into subjects, and then each subject into activities
allsubjects <- split(allmeans,allmeans$subject)
for (i in 1:length(allsubjects)) {
  allsubjects[[i]] <- split(allsubjects[[i]],allsubjects[[i]]$activity)
}
length(unique(allmeans$activity)) * length(unique(allmeans$subject)) ## number of combos

## Take averages for each item in allsubjects
averagelist <- vector("list",30)
for (i in 1:30) {
  for (j in 1:6) {
    averagelist[[i]][[j]] <- sapply(allsubjects[[i]][[j]],mean)
  }
}

## Convert list to data frame
allmeans2 <- data.frame(matrix(NA,nrow=68,ncol=180))
for (i in 1:30) {
  for (j in 1:6)
    allmeans2[,((i-1)*6)+j] <- as.data.frame(averagelist[[i]][[j]])
}

## transpose to wide form
allmeans2 <- data.frame(t(allmeans2))
## assign column names
names(allmeans2) <- names(allmeans)

## replace activities with activity names
allmeans2$activity <- sub(1,"Walking",allmeans2$activity)
allmeans2$activity <- sub(2,"WalkUpStairs",allmeans2$activity)
allmeans2$activity <- sub(3,"WalkDownStairs",allmeans2$activity)
allmeans2$activity <- sub(4,"Sitting",allmeans2$activity)
allmeans2$activity <- sub(5,"Standing",allmeans2$activity)
allmeans2$activity <- sub(6,"Lying",allmeans2$activity)

## Write this table to a file
setwd("../..")
con <- file("tidydata.txt")
write.table(allmeans2, con, row.name=FALSE)
close(con)