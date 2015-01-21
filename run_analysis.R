setwd("UCI HAR Dataset")

# read descriptions
features<-read.table("features.txt")
activity.lables<-read.table("activity_labels.txt")

##1.1## Merge the training and the test sets to create one data set.
# Part1: read data (columns will be combined later, after selection and renaming)
subjects<-rbind(read.table("test/subject_test.txt"), read.table("train/subject_train.txt"))
y<-rbind(read.table("test/y_test.txt"), read.table("train/y_train.txt"))
x<-rbind(read.table("test/X_test.txt"), read.table("train/X_train.txt"))

##2## Extract only the measurements on the mean and standard deviation for each measurement
# all columns which have "mean" or "std" somewhere in their name
columns.sel <- grep("mean|std", features$V2)
# subset those columns of x to x.sel
x.sel <- x[,columns.sel]

##3## Use descriptive activity names to name the activities in the data set
# activities becomes a factor variable who's values are from "activity_labels.txt"
activities<-factor(y$V1, label=activity.lables$V2)

##1.2## Merge the training and the test sets to create one data set.
# Part2: bind prepaired columns together
df <- cbind(subjects, activities, x.sel)

##4## Appropriately label the data set with descriptive variable names. 
colnames(df) <- c("subject", "activity", make.names(features$V2[columns.sel]))

##5## From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
df.tidy<-aggregate(x=df[,3:81], by=list(df$subject, df$activity), FUN=mean)
colnames(df.tidy)[1]="subject"
colnames(df.tidy)[2]="activity"
write.table(df.tidy, file = "../tidy-summary.txt", row.name=FALSE)

