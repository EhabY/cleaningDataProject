library(data.table)
library(dplyr)

setwd("UCI HAR Dataset")

features <- fread("features.txt", select = 2, col.names = "Feature")
# Choose only mean and STD (Step 2)
cols <- grepl("mean", features$Feature) | grepl("std", features$Feature) 

# Reading train and test inputs (X), output (Y), and ID (Subject)
X_train <- fread("train/X_train.txt", select = which(cols), col.names = features$Feature[cols])
X_test <- fread("test/X_test.txt", select = which(cols), col.names = features$Feature[cols])
Y_train <- fread("train/y_train.txt", col.names = "Activity")
Y_test <- fread("test/y_test.txt", col.names = "Activity")
subject_train <- fread("train/subject_train.txt", col.names = "ID")
subject_test <- fread("test/subject_test.txt", col.names = "ID")

# Combining train data with the test data
X <- rbind(X_train, X_test)
Y <- rbind(Y_train, Y_test)
subject <- rbind(subject_train, subject_test)

# Putting it all in one table (Step 1)
total_df <- cbind(subject, Y, X)

# Labeling activities descriptively (Step 3)
activities <- fread("activity_labels.txt", select = 2, col.names = "Activity")
total_df$Activity <- as.factor(activities$Activity[total_df$Activity])

# Making the name more descriptive (Step 4)
names(total_df) <- gsub("^f", "frequency", names(total_df))
names(total_df) <- gsub("^t", "time", names(total_df))
names(total_df) <- gsub("Acc", "Accelerometer", names(total_df))
names(total_df) <- gsub("Gyro", "Gyroscope", names(total_df))
names(total_df) <- gsub("Mag", "Magnitude", names(total_df))
names(total_df) <- gsub("mean\\(\\)", "Mean", names(total_df))
names(total_df) <- gsub("std\\(\\)", "STD", names(total_df))
names(total_df) <- gsub("meanFreq\\(\\)", "Mean-Frequency", names(total_df)) # repetitive
names(total_df) <- gsub("BodyBody", "Body", names(total_df)) # repetitive


setwd("../")

# Step 5
avgData <- total_df %>%
                group_by(ID, Activity) %>%
                summarize(across(everything(), mean)) # OR summarize_all("mean")

fwrite(avgData, "avgData.txt")
