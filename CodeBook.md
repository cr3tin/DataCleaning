The training and the test sets are merged to create one data set.
Only the measurements on the mean and standard deviation for each measurement are extracted.
Activity names are updated to be discriptive.
The labels in the data set are appropriately updated with descriptive variable names.
From this data set an independent tidy data set with the average of each variable for each activity and each subject is extracted.

Tidy Data variables:

"Subject" - unique id used for identifying the subject.
"ActivityName" - The name of the activity performed for which the data was collected
"Activity" - The id of the activity performed
"timeBodyAccMeanX"
"timeBodyAccMeanY"
"timeBodyAccMeanZ"
"timeBodyAccStdDevX"
"timeBodyAccStdDevY"
"timeBodyAccStdDevZ"
"timeGravityAccMeanX"
"timeGravityAccMeanY"
"timeGravityAccMeanZ"
"timeGravityAccStdDevX"
"timeGravityAccStdDevY"
"timeGravityAccStdDevZ"
"timeBodyAccJerkMeanX"
"timeBodyAccJerkMeanY"
"timeBodyAccJerkMeanZ"
"timeBodyAccJerkStdDevX"
"timeBodyAccJerkStdDevY"
"timeBodyAccJerkStdDevZ"
"timeBodyGyroMeanX"
"timeBodyGyroMeanY"
"timeBodyGyroMeanZ"
"timeBodyGyroStdDevX"
"timeBodyGyroStdDevY"
"timeBodyGyroStdDevZ"
"timeBodyGyroJerkMeanX"
"timeBodyGyroJerkMeanY"
"timeBodyGyroJerkMeanZ"
"timeBodyGyroJerkStdDevX"
"timeBodyGyroJerkStdDevY"
"timeBodyGyroJerkStdDevZ"
"timeBodyAccMagMean"
"timeBodyAccMagStdDev"
"timeGravityAccMagMean"
"timeGravityAccMagStdDev"
"timeBodyAccJerkMagMean"
"timeBodyAccJerkMagStdDev"
"timeBodyGyroMagMean"
"timeBodyGyroMagStdDev"
"timeBodyGyroJerkMagMean"
"timeBodyGyroJerkMagStdDev"
"frequencyBodyAccMeanX"
"frequencyBodyAccMeanY"
"frequencyBodyAccMeanZ"
"frequencyBodyAccStdDevX"
"frequencyBodyAccStdDevY"
"frequencyBodyAccStdDevZ"
"frequencyBodyAccJerkMeanX"
"frequencyBodyAccJerkMeanY"
"frequencyBodyAccJerkMeanZ"
"frequencyBodyAccJerkStdDevX"
"frequencyBodyAccJerkStdDevY"
"frequencyBodyAccJerkStdDevZ"
"frequencyBodyGyroMeanX"
"frequencyBodyGyroMeanY"
"frequencyBodyGyroMeanZ"
"frequencyBodyGyroStdDevX"
"frequencyBodyGyroStdDevY"
"frequencyBodyGyroStdDevZ"
"frequencyBodyAccMagMean"
"frequencyBodyAccMagStdDev"
"frequencyBodyBodyAccJerkMagMean"
"frequencyBodyBodyAccJerkMagStdDev"
"frequencyBodyBodyGyroMagMean"
"frequencyBodyBodyGyroMagStdDev"
"frequencyBodyBodyGyroJerkMagMean"
"frequencyBodyBodyGyroJerkMagStdDev"

Feature Selection 
=================

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