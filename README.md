Getting and Cleaning Data Course Project
========================================


All desired steps, which are

1. Merge the training and the test sets to create one data set.
2. Extract only the measurements on the mean and standard deviation for each measurement. 
3. Use descriptive activity names to name the activities in the data set
4. Appropriately label the data set with descriptive variable names. 
6. From the data set in step 4, create a second, independent tidy data set with the average of each variable for each activity and each subject.

are performed by the single R script called `run_analysis.R`.

The script assumes that the data from
[https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip]

was unpacked to the subfolder named `UCI HAR Dataset` of the working directory

The code is commented according to the steps above. Step one is performed in two parts interrupted by code for steps 2 and 3 to ease those steps.

The resulting table will be written to the file `tidy-summary.txt` in the working directory and may be read in with

```
result <- read.table("tidy-summary.txt", header = TRUE)
```

All columns of this table, except for subject and activity, are the means of the corresponding columns of the original dataset whose names contained the strings `mean` or `std`. The column names of the resulting table were changed by `make.names` to be proper names for columns in R. What the columns contain is described in `CodeBook.md` in more detail.