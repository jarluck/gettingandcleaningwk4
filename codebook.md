This data was prepared from the raw data as follows:
1. Read xtrain, ytrain and activitytrain
2. Read the corresponding test files.
3. Rbind corresponding test and train files.
4. Read labels and features data.
5. Add features as the column names for the main data.
6. Add subject labels as a column for the main data.
7. Match activity codes to activity labels (see below) and add them as a column to the main data. 
8. Filter out columns that are not measurements of a mean or standard deviation.
9. For each combination of activity and subject, average the measurments, and store the result.
10. These sums are added to the tidy set data frame.
11. The tidyframe is outputted. 

## Variables:
subject - the test subject's ID. Varies from 1 to 30. 

activity - the physical activity engaged in. The activities are:

WALKING
WALKING_UPSTAIRS
WALKING_DOWNSTAIRS
SITTING
STANDING
LAYING

## Measurements:
The mean of all measurements recorded for a particular subject doing a particular activity. 
The individual measurements are:

tBodyAccMeanX

tBodyAccMeanY

tBodyAccMeanZ

tBodyAccStdX

tBodyAccStdY

tBodyAccStdZ

tGravityAccMeanX

tGravityAccMeanY

tGravityAccMeanZ

tGravityAccStdX

tGravityAccStdY

tGravityAccStdZ

tBodyAccJerkMeanX

tBodyAccJerkMeanY

tBodyAccJerkMeanZ

tBodyAccJerkStdX

tBodyAccJerkStdY

tBodyAccJerkStdZ

tBodyGyroMeanX

tBodyGyroMeanY

tBodyGyroMeanZ

tBodyGyroStdX

tBodyGyroStdY

tBodyGyroStdZ

tBodyGyroJerkMeanX

tBodyGyroJerkMeanY

tBodyGyroJerkMeanZ

tBodyGyroJerkStdX

tBodyGyroJerkStdY

tBodyGyroJerkStdZ

tBodyAccMagMean

tBodyAccMagStd

tGravityAccMagMean

tGravityAccMagStd

tBodyAccJerkMagMean

tBodyAccJerkMagStd

tBodyGyroMagMean

tBodyGyroMagStd

tBodyGyroJerkMagMean

tBodyGyroJerkMagStd

fBodyAccMeanX

fBodyAccMeanY

fBodyAccMeanZ

fBodyAccStdX

fBodyAccStdY

fBodyAccStdZ

fBodyAccMeanFreqX

fBodyAccMeanFreqY

fBodyAccMeanFreqZ

fBodyAccJerkMeanX

fBodyAccJerkMeanY

fBodyAccJerkMeanZ

fBodyAccJerkStdX

fBodyAccJerkStdY

fBodyAccJerkStdZ

fBodyAccJerkMeanFreqX

fBodyAccJerkMeanFreqY

fBodyAccJerkMeanFreqZ

fBodyGyroMeanX

fBodyGyroMeanY

fBodyGyroMeanZ

fBodyGyroStdX

fBodyGyroStdY

fBodyGyroStdZ

fBodyGyroMeanFreqX

fBodyGyroMeanFreqY

fBodyGyroMeanFreqZ

fBodyAccMagMean

fBodyAccMagStd

fBodyAccMagMeanFreq

fBodyBodyAccJerkMagMean

fBodyBodyAccJerkMagStd

fBodyBodyAccJerkMagMeanFreq

fBodyBodyGyroMagMean

fBodyBodyGyroMagStd

fBodyBodyGyroMagMeanFreq

fBodyBodyGyroJerkMagMean

fBodyBodyGyroJerkMagStd

fBodyBodyGyroJerkMagMeanFreq


