#read in test and train data
testdata <- read.table("test/X_test.txt")
subject_test <- read.table("test/subject_test.txt")
y_test<- read.table("test/y_test.txt")

traindata <- read.table("train/X_train.txt")
subject_train <- read.table("train/subject_train.txt")
y_train<- read.table("train/y_train.txt")

#merge test and train
data <-rbind(testdata, traindata)
subject <- rbind(subject_test, subject_train)
y <- rbind(y_test,y_train)

#read in labels
actlab <- read.table("activity_labels.txt")
features <- read.table("features.txt")

#add measurement labels. 
names(data) <- features$V2

#only keep those measurements that are of a mean or standard deviation
data <- data[,grepl("(std)|(mean)", names(data))]

#label subjects and activities
data$subject <- subject$V1
data$activity <- actlab$V2[y$V1]
#put subject and activity as 1st and 2nd cols
data <- data[,c(ncol(data), ncol(data) - 1, 1:ncol(data) - 2)]

#make new tidy data frame, which groups by activity and test subject
tidyframe <- data.frame(matrix(ncol = ncol(data), nrow = 0))



act <- unique(data$activity)
sub <- unique(data$subject)
for (i in 1:length(act))
{
  for (j in 1:length(sub))
  {
    newrow <- c(act[i], sub[j], 
                colMeans(data[data$activity == act[i]&data$subject == sub[j],3:ncol(data)]))
    tidyframe <- rbind(tidyframe, newrow)
  }
}
#Set column names of tidyframe equal to those of the main data frame. 
names(tidyframe) <- names(data)
#output result
write.table(tidyframe, "tidyMotionData.txt", sep="\t", row.name = FALSE)
