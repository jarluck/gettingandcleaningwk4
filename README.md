# Data Analysis and Tidying Project

This code aggregates and tidies accelerometer data from the UCI Wearable Computing project.

The raw data is at https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip ; we do not include it here as the margins of this GitHub are too small to contain it. The script assumes that it is being run from the root directory of the file.

The script inputs and combines the testing and training data, and labels each measurement following the descriptions in features.txt. It also labels the broad category of behavior the measurement was observed in (e.g, walking, standing), and labels the test subject from whom the data was recorded. We only keep those measurements that are of either the mean or the standard deviation of some variable. 


The outputted tidy data set (TidyMotionData.txt) has each combination of  test subject and activity category, and lists the average of each measurement accordingly. 

