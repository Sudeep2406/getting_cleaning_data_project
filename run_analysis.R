setwd(list.dirs()[3])
setwd(list.dirs()[2])
list.dirs()
list.files()
d <- read.table(list.files()[1])
dim(d)
View(d)
setwd("../")
d <- read.table(list.files()[3])

###########################################
library(dplyr)

## load activity lables
activity <- read.table("activity_labels.txt")

## load the features.txt file
features <- read.table("features.txt")
View(features)

## load train datasets
subject_train <- read.table("./train/subject_train.txt")
x_train <- read.table("./train/X_train.txt")
y_train <- read.table("./train/y_train.txt")

## load test datasets
subject_test <- read.table("./test/subject_test.txt")
x_test <- read.table("./test/X_test.txt")
y_test <- read.table("./test/y_test.txt")


## Combining train and test datasets
finaldata <- rbind((cbind(subject_train,x_train,y_train)),(cbind(subject_test,x_test,y_test)))

## assigning column names to finaldata
colnames(finaldata) <- c("subject",as.character(features[, 2]),"activity")

## Extracting columns to keep in finaldata 
k <- grepl("subject|mean|std|activity",names(finaldata))
finaldata <- finaldata[,k]

## Naming activities in finaldata
finaldata$activity <- factor(finaldata$activity,levels = activity[,1],labels = activity[,2])


## Appropriately labelling the data set with descriptive variable names
final_names <- names(finaldata)
final_names <- gsub("[\\()-]","",final_names)
final_names <- gsub("^t","time",final_names)
final_names <- gsub("^f","frequency",final_names)
final_names <- gsub("std","standarddeviation",final_names)

colnames(finaldata) <- final_names

## Creating tidy dataset
tidydata <- finaldata %>% 
            group_by(activity,subject) %>%
            summarize_all(mean)

write.table(tidydata,"tidydata.txt",row.names = FALSE)









