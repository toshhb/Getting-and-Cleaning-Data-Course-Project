Feature Selection (from the original dataset)
=============================================

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ  
tGravityAcc-XYZ  
tBodyAccJerk-XYZ  
tBodyGyro-XYZ  
tBodyGyroJerk-XYZ  
tBodyAccMag  
tGravityAccMag  
tBodyAccJerkMag  
tBodyGyroMag  
tBodyGyroJerkMag  
fBodyAcc-XYZ  
fBodyAccJerk-XYZ  
fBodyGyro-XYZ  
fBodyAccMag  
fBodyAccJerkMag  
fBodyGyroMag  
fBodyGyroJerkMag 

##Modifications to the original dataset
(resulting in the tidi dataset `tidy-summary.txt`)
From the .mean and .std colums of the original dataset that were estimated from the above signals these new columns were calculated:

XXX.mean...: mean of the Mean values for signal XXX  
XXX.std...:  mean of Standard deviations for signal XXX

For a description of the processing please consult `Readme.md` and read the comments in `run_analysis.R`.

*As all values were already normalized in the original dataset all values have no units.*


###Complete list:

tBodyAcc.mean...X  
tBodyAcc.mean...Y  
tBodyAcc.mean...Z  
tBodyAcc.std...X  
tBodyAcc.std...Y  
tBodyAcc.std...Z  
tGravityAcc.mean...X  
tGravityAcc.mean...Y  
tGravityAcc.mean...Z  
tGravityAcc.std...X  
tGravityAcc.std...Y  
tGravityAcc.std...Z  
tBodyAccJerk.mean...X  
tBodyAccJerk.mean...Y  
tBodyAccJerk.mean...Z  
tBodyAccJerk.std...X  
tBodyAccJerk.std...Y  
tBodyAccJerk.std...Z  
tBodyGyro.mean...X  
tBodyGyro.std...Y  
tBodyGyro.std...Z  
tBodyGyroJerk.mean...X  
tBodyGyroJerk.mean...Y  
tBodyGyroJerk.mean...Z  
tBodyGyroJerk.std...X  
tBodyAccMag.std..  
tGravityAccMag.mean..  
tGravityAccMag.std..  
tBodyAccJerkMag.mean..  
tBodyAccJerkMag.std..  
tBodyGyroMag.mean..  
fBodyAcc.mean...X  
fBodyAcc.mean...Y  
fBodyAcc.mean...Z  
fBodyAcc.std...X  
fBodyAcc.std...Y  
fBodyAcc.std...Z  
fBodyAccJerk.mean...X  
fBodyAccJerk.mean...Y  
fBodyAccJerk.mean...Z  
fBodyAccJerk.std...X  
fBodyAccJerk.std...Y  
fBodyAccJerk.std...Z  
fBodyGyro.mean...X  
fBodyGyro.mean...Y  
fBodyGyro.mean...Z  
fBodyGyro.std...X  
fBodyGyro.std...Y  
fBodyGyro.std...Z  
fBodyAccMag.mean..  
fBodyAccMag.std..  
fBodyAccMag.meanFreq..  
fBodyBodyAccJerkMag.mean..  
fBodyBodyAccJerkMag.std..  
fBodyBodyAccJerkMag.meanFreq..  
fBodyBodyGyroJerkMag.mean..  
fBodyBodyGyroJerkMag.std..  
fBodyBodyGyroJerkMag.meanFreq..  

