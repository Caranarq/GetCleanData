## Script to collect, work with, and clean a data set
## Goal: to prepare tidy data that can be used for later analysis

## 
## SPECIFIC REQUIREMENTS
## REQ1: Merge the training and test sets to create one data set.
## REQ2: Extract only the measurements on the mean and standard 
##      deviation for each measurement. 
## REQ3: Use descriptive activity names to name the activities 
##      in the data set
## REQ4: Appropriately labels the data set with descriptive 
##      variable names. 
## REQ5: From the data set in step 4, creates a second, independent
##      tidy data set with the average of each variable for each 
##      activity and each subject.

## > run_analysis(directory)
## specify the directory where the raw data files 
## should be downloaded, for example
## "F:/Shared/Learning/DataScience/03 Getting and clening Data/CapstoneProject"
## The function will perform the analysis by itself.

run_analysis <- function(directory = getwd()) {
        setwd(directory)
        # RETRIEVE DATASET
        message("1/10. Retrieving raw dataset ...")
        if(!dir.exists("UCI HAR Dataset")) {
                download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip","Dataset.zip", mode="wb")
                unzip("Dataset.zip")
        } else {
                message("   Message: dataset existed from a previous session, using existing dataset...")
        }
        # IMPORT TEST AND TRAIN FILES INTO R ENVIRONMENT
        message("2/10. Importing files into R environment ... ")
                # test files
                testsubj <- read.table("./UCI HAR Dataset/test/subject_test.txt")
                testset <- read.table("./UCI HAR Dataset/test/X_test.txt")
                testlabels <- read.table("./UCI HAR Dataset/test/y_test.txt")
                # train files
                trainsubj <- read.table("./UCI HAR Dataset/train/subject_train.txt")
                trainset <- read.table("./UCI HAR Dataset/train/X_train.txt")
                trainlabels <- read.table("./UCI HAR Dataset/train/y_train.txt")
                # descriptions
                labels <- read.table("./UCI HAR Dataset/activity_labels.txt")
                labels <- labels[, 2]
                labels <- as.character(labels)
                features <- read.table("./UCI HAR Dataset/features.txt")
                features <- as.character(features[, 2])

        # REQ5 : Appropriately label the data set with descriptive variable names
        message("3/10. Labeling dataset with descriptive variable names ... ")
        names(trainset)[1:length(features)] <- features
        names(testset)[1:length(features)] <- features
                
        # REQ2 : Extract mean and std. dev. measurements
        message("4/10. Extracting mean and standard deviation measurements ... ")
        meancol <- features[grep("Mean", features, ignore.case = T)]
        stdcol <- features[grep("std", features, ignore.case = T)]
        quedata <- c(meancol, stdcol)
        testdata <- testset[, quedata]
        traindata <- trainset[, quedata]

        # REQ3 : Use descriptive activity names
        message("5/10. Labeling activity names ... ")
        trainact <- trainlabels
        testact <- testlabels
        qrep <- function(x, values) {
                dfx <- as.data.frame(x)
                charvals <- as.character(values)
                for(i in 1:length(values)) {
                        matchvector <- which(dfx==i)
                        dfx[matchvector, ] <- charvals[i]
                }
                dfx
        }
        trainnames <- qrep(trainact, labels)
        testnames <- qrep(testact, labels)
        traindata$activity <- trainnames[, 1]
        testdata$activity <- testnames[, 1]

        # REQ1 : Merge the TRAINING and TEST sets
        message("6/10. Merging TRAINING and TEST sets ... ")
        traindata$subject <- trainsubj[, 1]
        testdata$subject <- testsubj[, 1]
        alldata <- rbind(traindata, testdata)
        alldata <- alldata[, c(88, 87, 1:86)] #reorder for human reading
        DS_all_meanstd <<- alldata
        message("7/10. DATASET 1 CREATED:")
        message("  'DS_all_meanstd' dataset was created in the parent environment.")
        message("   ")
        #REQ5 : create an independent data set with the average of each 
        #variable for each activity and each subject.
                # calculate the requested averages
                message("8/10. Spliting data by activity and subject ... ")
                actsubj <- paste(alldata$subject, alldata$activity)
                alldata$actsubj <- actsubj
                alldata <- alldata[, c(89, 1:88)] # strip character columns
                numdata <- alldata[, 4:89]
                numlist <- split(numdata, actsubj)
                message("9/10. Calculating means ... ")
                meanlist <- lapply(numlist, colMeans)
                finaldf <- do.call("rbind", meanlist)
                finaldf <- as.data.frame(finaldf)
                # return stripped character columns
                factors <- alldata[as.numeric(rownames(unique(as.data.frame(actsubj)))), 2:3]
                factors <- factors[order(unique(actsubj)), ]
                # complete the tidy dataset
                tidymeans <- cbind(factors, finaldf)
                row.names(tidymeans) <- 1:180
                DS_tidymeans <<- tidymeans
        message("10/10. DATASET 2 CREATED:")
        message("   'DS_tidymeans' dataset was created in the parent environment.")
        message("   ")
        message("***OPERATION COMPLETE***
   2 datasets created: 
   'DS_all_meanstd' 
   'DS_tidymeans'")
}