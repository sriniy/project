featureVec <- read.table(file="features.txt")
featureVec <- featureVec[,2]
indx1 = c()
for (i in 1:length(featureVec)){
	if(length(grep("-mean()",featureVec[i])) != 0)(indx1 <- c(indx1, i))
}
indx2 = c()
for (i in 1:length(featureVec)){
	if(length(grep("-std()",featureVec[i])) != 0)(indx1 <- c(indx1, i))
}

indx3 = c(indx1,indx2)
x_testData <- read.table(file="./test/X_test.txt",col.names=featureVec)
x_testData <- x_testData[,indx3]
x_trainData <- read.table(file="./train/X_train.txt",col.names=featureVec)
x_trainData <- x_trainData[,indx3]

x_mergedData <- rbind(x_testData, x_trainData)

activity_labels <- read.table("./activity_labels.txt")
activity_labels <- (as.character(activity_labels$V2))

y_testData <- read.table(file="./test/y_test.txt", col.names=c("activity"))
y_trainData <- read.table(file="./train/y_train.txt", col.names=c("activity"))
y_mergedData <- rbind(y_testData, y_trainData)

for (i in 1:length(activity_labels)) {
	y_mergedData[y_mergedData[1] == i] <- activity_labels[i]
	}

mergedData <- cbind(x_mergedData, y_mergedData)
subid_testData <- read.table(file="./test/subject_test.txt", col.names="Subject Id")
subid_trainData <- read.table(file="./train/subject_train.txt", col.names="Subject Id")
subid_mergedData <- rbind(subid_testData, subid_trainData)
mergedData <- cbind(subid_mergedData, mergedData)

library(plyr)
tidy_walking <- ddply(mergedData[mergedData[,81]=="WALKING",],.(Subject.Id), numcolwise(mean))
tidy_walking_upstairs <- ddply(mergedData[mergedData[,81]=="WALKING_UPSTAIRS",],.(Subject.Id), numcolwise(mean))
tidy_walking_downstairs <- ddply(mergedData[mergedData[,81]=="WALKING_DOWNSTAIRS",],.(Subject.Id), numcolwise(mean))
tidy_sitting <- ddply(mergedData[mergedData[,81]=="SITTING",],.(Subject.Id), numcolwise(mean))
tidy_standing <- ddply(mergedData[mergedData[,81]=="STANDING",],.(Subject.Id), numcolwise(mean))
tidy_laying <- ddply(mergedData[mergedData[,81]=="LAYING",],.(Subject.Id), numcolwise(mean))
tidy_walking$activity <- "WALKING"
tidy_walking_upstairs$activity <- "WALKING_UPSTAIRS"
tidy_walking_downstairs$activity <- "WALKING_DOWNSTAIRS"
tidy_sitting$activity <- "SITTING"
tidy_standing$activity <- "STANDING"
tidy_laying$activity <- "LAYING"
tidy_merged <- rbind(tidy_sitting, tidy_standing, tidy_laying, tidy_walking, tidy_walking_upstairs, tidy_walking_downstairs)

