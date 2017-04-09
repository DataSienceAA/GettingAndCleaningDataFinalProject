
#load library to use using melt and dcast functions
library(reshape2)

# Load the various datasets
test.subject <- read.table("./test/subject_test.txt")
test.x <- read.table("./test/X_test.txt")
test.y <- read.table("./test/y_test.txt")
train.subject <- read.table("./train/subject_train.txt")
train.x <- read.table("./train/X_train.txt")
train.y <- read.table("./train/y_train.txt")

features <- read.table("./features.txt")
activity.labels <- read.table("./activity_labels.txt")

# Merge the test and train subject datasets
subject <- rbind(test.subject, train.subject)

#Change column name
colnames(subject) <- "subject"


# Combine by rows the test and train labels. Merge label and activity.labels.
label <- rbind(test.y, train.y)
label <- merge(label, activity.labels, by=1)[,2]

# Combine by rows the test.x and train.x datasets.

data <- rbind(test.x, train.x)
colnames(data) <- features[, 2]

# Merge subject,label, and data datasets
data <- cbind(subject, label, data)

# Create a sub-set containing only the mean and std variables
search <- grep("-mean|-std", colnames(data))
data.mean.std <- data[,c(1,2,search)]

# Compute the means, grouped by subject/label using melt and dcast functions
melted = melt(data.mean.std, id.var = c("subject", "label"))
means = dcast(melted , subject + label ~ variable, mean)

# Save the resulting dataset into tidy_data.txt file
write.table(means, file="./tidy_data.txt",row.names = FALSE)

# Output(print) the final dataset
means
