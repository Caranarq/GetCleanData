# Getting and Cleaning Data
## Course Project
One of the most exciting areas in all of data science right now is wearable computing. Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to the course website was collected from the accelerometers and gyroscope from the Samsung Galaxy S smartphone, and was made available to download through the following link:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
The goal of the course project is to prepare tidy data that can be used for later analysis.
To achieve this, it was required to create a script to collect, work with and clean a dataset. To run the script, just type `run_analysis()`

There are four deliverables for the project:
* Deliverable 1: a tidy data set, 
* Deliverable 2: a link to a Github repository with the `script` for performing the analysis,
* Deliverable 3: a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md
* Deliverable 4: a README.md in the repo with your scripts, which explains how all of the scripts work and how they are connected.

### 1. A tidy dataset.
When run, the `run_analysis()` function creates two datasets in the global environment of R:
* `DS_all_meanstd` - Dataset: Mean and Standard Deviation values for all the subjects and all activities, merged from the 'training' and 'test' sets.
* `DS_tidymeans` - Dataset: The calculated average for all the measurements in the *DS_all_meanstd* dataset. Calculated for each activity and each subject. This dataset is also included in the repository in the form of a CSV file: 'DS_tidymeans.csv', exported from the R environment using the follwing code:
`write.table(DS_tidymeans, "DS_tidymeans.csv", sep = ",")`

### 2. A  Github repository with the script to perform the analysis.
The script was created to meet the requirements asked for the project:
* REQ1: Merge the training and test sets to create one data set.
* REQ2: Extract only the measurements on the mean and standard deviation for each measurement. 
* REQ3: Use descriptive activity names to name the activities in the data set
* REQ4: Appropriately labels the data set with descriptive variable names. 
* REQ5: From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

To run the script, just type `run_analysis()` after loading the script. The function asks for a folder (default: current folder) to download the raw data, then checks if the data was already downladed to save time and bandwith. Once the data is downloaded, it performs the analysis steps providing the user messages on the progress of the analysis, as follows:

* 1/10. Retrieving raw dataset ...
* 2/10. Importing files into R environment ... 
* 3/10. Labeling dataset with descriptive variable names ... 
* 4/10. Extracting mean and standard deviation measurements ... 
* 5/10. Labeling activity names ... 
* 6/10. Merging TRAINING and TEST sets ... 
* 7/10. DATASET 1 CREATED
* 8/10. Spliting data by activity and subject ... 
* 9/10. Calculating means ... 
* 10/10. DATASET 2 CREATED
OPERATION COMPLETE
   2 datasets created: 
   'DS_all_meanstd' 
   'DS_tidymeans'

### 3. A code book
Together with the `CodeBook.md` file, codebook.xlsx and features.xmind files are provided.

### 4. This README.md file
The following files are included in the repository:

file | Description
---- | -----------
README.md | This readme file.
CodeBook.md | The codebook for the datasets.
codebook.xlsx | An excel file used to build the codebook.
Features.xmind | An xMind (https://www.xmind.net) mind map used to understand the features to create the codebook.
DS_tidymeans.csv | The tidy dataset requested
UCI HAR Dataset | (Directory) The raw data after unziping.

### THANKS FOR YOUR ATTENTION. CARLOS ARANA MATUS