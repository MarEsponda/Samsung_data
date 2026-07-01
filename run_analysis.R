# Maria del Mar E.
# 2026
library(readr)
library(dplyr)

setwd("D:/OneDrive - CGIAR/Documents/Coursera/Estadística_Análisis_de_datos_R/final_project")


# 1. Merges the training and the test sets to create one data set.
subject_train <- read_table("train/subject_train.txt", col_names = FALSE)
X_train <- read_table("train/X_train.txt", col_names = FALSE)
y_train <- read_table("train/y_train.txt", col_names = FALSE)
training <- cbind(subject_train,X_train,y_train)

t_subject_train <- read_table("test/subject_test.txt", col_names = FALSE)
t_X_train <- read_table("test/X_test.txt", col_names = FALSE)
t_y_train <- read_table("test/y_test.txt", col_names = FALSE)
test <- cbind(t_subject_train, t_X_train, t_y_train)

data_set <- rbind(training, test)
names <- read_table("features.txt", col_names = FALSE)
names <- c("subject", names$X2, "Activity")
colnames(data_set) <- names


# 2. Extracts only the measurements on the mean and standard deviation for each measurement. 
filt_data_set <- data_set[, c(1,grep("mean|std|Mean", colnames(data_set)),563)]

# 3. Uses descriptive activity names to name the activities in the data set
filt_data_set$Activity <- factor(filt_data_set$Activity, 
                                 levels = c(1, 2, 3, 4, 5, 6),
                                 labels = c("WALKING", "WALKING_UPSTAIRS", "WALKING_DOWNSTAIRS", 
                                            "SITTING", "STANDING", "LAYING"))

# 4. Appropriately labels the data set with descriptive variable names. 
#Already done

# 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
data_resumen <- filt_data_set %>%
        group_by(Activity, subject) %>%
        summarise(across(where(is.numeric), mean, na.rm = TRUE))

#https://github.com/MarEsponda/Samsung_data

