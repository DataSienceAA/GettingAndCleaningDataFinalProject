


**The Code Book**

The code book describes the variables, the data, and transformations that were performed to clean up the data based on the project instructions.

**The Data Source**

•	Original data: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

•	Original description of the dataset: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The original dataset includes the following files:

•	'README.txt'

•	'features_info.txt': Shows information about the variables used on the feature vector.

•	'features.txt': List of all features.

•	'activity_labels.txt': Links the class labels with their activity name.

•	'train/X_train.txt': Training set.

•	'train/y_train.txt': Training labels.

•	'test/X_test.txt': Test set.

•	'test/y_test.txt': Test labels.

**Transformations**

Run_analysis.R script performs the following transformations:
1.	Reads the data from the original dataset (downloaded and extracted into the working directory).
2.	Merges the training and the test sets to create one data set.
3.	Extracts only the measurements on the mean and standard deviation for each measurement.
4.	Uses descriptive activity names to name the activities in the data set.
5.	Appropriately labels the data set with descriptive activity names.
6.	Creates a second, independent tidy data set with the average of each variable for each activity and each subject.

**Output**

The output of run_analysis.R script is an independent tidy data set with the average of each variable for each activity and each subject.

