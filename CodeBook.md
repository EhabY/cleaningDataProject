# CodeBook
This data was obtained by tidying and summerizing the [Human Activity Recognition Using Smartphones Data Set](https://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

## Replication
Steps to achieve the *avgData.txt* dataset from the original **UCI HAR Dataset**:
1. Read the feature list and identify the *mean* and *std* columns (create a filter variable).
2. Read the train and test data for each variable (ID, Activity, and the filtered features).
3. Merge the rows of each variable, each on its own.
4. Merge the columns of the resulting data tables/frames.
5. Read the activities and replace the numbers with their labels.
6. Tidy the data by making the variables readable:
    * Starting with f --> frequency
    * Starting with t --> time
    * Acc --> Accelerometer
    * Gyro --> Gyroscope
    * Mag --> Magnitude
    * mean() --> Mean
    * std() --> STD
    * meanFreq() --> Mean-Frequency
    * BodyBody --> Body
7. Group the tidy data by **ID** and **Activity** then get the mean of each group (summarize) 

## Description
The data consists of 180 rows with 81 columns as follows:
1. ID [int]: an integer used to identify unique subjects
2. Activity [Factor]: 6 different levels/activities (*LAYING*, *SITTING*, *STANDING*, *WALKING*, *WALKING_DOWNSTAIRS*, *WALKING_UPSTAIRS*)
3. timeBodyAccelerometer-Mean-X [Numeric]: Mean of the body acceleration along the X-axis
4. timeBodyAccelerometer-Mean-Y [Numeric]: Mean of the body acceleration along the Y-axis
5. timeBodyAccelerometer-Mean-Z [Numeric]: Mean of the body acceleration along the Z-axis
6. timeBodyAccelerometer-STD-X [Numeric]: Standard deviation of the body acceleration along the X-axis
7. timeBodyAccelerometer-STD-Y [Numeric]: Standard deviation of the body acceleration along the Y-axis
8. timeBodyAccelerometer-STD-Z [Numeric]: Standard deviation of the body acceleration along the Z-axis
9. timeGravityAccelerometer-Mean-X [Numeric]: Mean of the gravity acceleration along the X-axis
10. timeGravityAccelerometer-Mean-Y [Numeric]: Mean of the gravity acceleration along the Y-axis
11. timeGravityAccelerometer-Mean-Z [Numeric]: Mean of the gravity acceleration along the Z-axis
12. timeGravityAccelerometer-STD-X [Numeric]: Standard deviation of the gravity acceleration along the X-axis
13. timeGravityAccelerometer-STD-Y [Numeric]: Standard deviation of the gravity acceleration along the Y-axis
14. timeGravityAccelerometer-STD-Z [Numeric]: Standard deviation of the gravity acceleration along the Z-axis
15. timeBodyAccelerometerJerk-Mean-X [Numeric]: Mean of the body accelerometer Jerk signal along the X-axis
16. timeBodyAccelerometerJerk-Mean-Y [Numeric]: Mean of the body accelerometer Jerk signal along the Y-axis
17. timeBodyAccelerometerJerk-Mean-Z [Numeric]: Mean of the body accelerometer Jerk signal along the Z-axis
18. timeBodyAccelerometerJerk-STD-X [Numeric]: Standard deviation of the body accelerometer Jerk signal along the X-axis
19. timeBodyAccelerometerJerk-STD-Y [Numeric]: Standard deviation of the body accelerometer Jerk signal along the Y-axis
20. timeBodyAccelerometerJerk-STD-Z [Numeric]: Standard deviation of the body accelerometer Jerk signal along the Z-axis
21. timeBodyGyroscope-Mean-X [Numeric]: Mean of the body angular velocity along the X-axis
22. timeBodyGyroscope-Mean-Y [Numeric]: Mean of the body angular velocity along the Y-axis
23. timeBodyGyroscope-Mean-Z [Numeric]: Mean of the body angular velocity along the Z-axis
24. timeBodyGyroscope-STD-X [Numeric]: Standard deviation of the body angular velocity along the X-axis
25. timeBodyGyroscope-STD-Y [Numeric]: Standard deviation of the body angular velocity along the Y-axis
26. timeBodyGyroscope-STD-Z [Numeric]: Standard deviation of the body angular velocity along the Z-axis
27. timeBodyGyroscopeJerk-Mean-X [Numeric]: Mean of the body gyroscope Jerk signal along the X-axis
28. timeBodyGyroscopeJerk-Mean-Y [Numeric]: Mean of the body gyroscope Jerk signal along the Y-axis
29. timeBodyGyroscopeJerk-Mean-Z [Numeric]: Mean of the body gyroscope Jerk signal along the Z-axis
30. timeBodyGyroscopeJerk-STD-X [Numeric]: Standard deviation of the body gyroscope Jerk signal along the X-axis
31. timeBodyGyroscopeJerk-STD-Y [Numeric]: Standard deviation of the body gyroscope Jerk signal along the Y-axis
32. timeBodyGyroscopeJerk-STD-Z [Numeric]: Standard deviation of the body gyroscope Jerk signal along the Z-axis
33. timeBodyAccelerometerMagnitude-Mean [Numeric]: Mean of the magnitude of body acceleration
34. timeBodyAccelerometerMagnitude-STD [Numeric]: Standard deviation of the magnitude of body acceleration
35. timeGravityAccelerometerMagnitude-Mean [Numeric]: Mean of the magnitude of gravity acceleration
36. timeGravityAccelerometerMagnitude-STD [Numeric]: Standard deviation of the magnitude of gravity acceleration
37. timeBodyAccelerometerJerkMagnitude-Mean [Numeric]: Mean of the magnitude of body accelerometer Jerk signal
38. timeBodyAccelerometerJerkMagnitude-STD [Numeric]: Standard deviation of the magnitude of body accelerometer Jerk signal
39. timeBodyGyroscopeMagnitude-Mean [Numeric]: Mean of the magnitude of body angular velocity
40. timeBodyGyroscopeMagnitude-STD [Numeric]: Standard deviation of the magnitude of body angular velocity
41. timeBodyGyroscopeJerkMagnitude-Mean [Numeric]: Mean of the magnitude of body gyroscope Jerk signal
42. timeBodyGyroscopeJerkMagnitude-STD [Numeric]: Standard deviation of the magnitude of body gyroscope Jerk signal

Columns 43 through 81 are the same as the above columns (3:42) but in frequency domain instead of time domain (with the addition of mean frequency)

## Notes

* The Jerk signals were derived from the body linear acceleration and angular velocity in time domain.
* The magnitude of the three-dimensional signals were calculated using the Euclidean norm.
* The values of the features (columns 3:81) were normalized and bounded within [-1, 1].
* Columns that begin with *time* are in time domain (3:42), while those that begin with *frequency* are in the frequency domain (43:81).
