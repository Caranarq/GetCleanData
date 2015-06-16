# Getting and Cleaning data
## CodeBook

The run_analysis() function, explained in the README.md file included in the repository, creates two datasets in the global environment of R:
* __*DS_all_meanstd*__ - Dataset: Mean and Standard Deviation values for all the subjects and all activities, merged from the 'training' and 'test' sets.
* __*DS_tidymeans*__ - Dataset, calculated average for all the measurements in the *DS_all_meanstd* dataset. Calculated for each activity and each subject.

Each dataset contains 88 columns, each column defined as follows:

Num | Name | Description
--- | ------------------------------------------- | ----------------------------------------------------
1 | subject | The subject who performed the activity for each window sample
2 | activity | Activity performed by the subject at the moment the signal was captured
3 | tBodyAcc-mean()-X | (Time domain Signal). Body acceleration signal, derivated by applying an additional low pass butterworth filter with a corner frequency of 30Hz to the tAcc value. Mean estimated from the signals on the 'X' axis.
4 | tBodyAcc-mean()-Y | (Time domain Signal). Body acceleration signal, derivated by applying an additional low pass butterworth filter with a corner frequency of 30Hz to the tAcc value. Mean estimated from the signals on the 'Y' axis.
5 | tBodyAcc-mean()-Z | (Time domain Signal). Body acceleration signal, derivated by applying an additional low pass butterworth filter with a corner frequency of 30Hz to the tAcc value. Mean estimated from the signals on the 'Z' axis.
6 | tGravityAcc-mean()-X | (Time domain Signal). Gravity acceleration signal, derivated by applying an additional low pass butterworth filter with a corner frequency of 30Hz to the tAcc value. Mean estimated from the signals on the 'X' axis.
7 | tGravityAcc-mean()-Y | (Time domain Signal). Gravity acceleration signal, derivated by applying an additional low pass butterworth filter with a corner frequency of 30Hz to the tAcc value. Mean estimated from the signals on the 'Y' axis.
8 | tGravityAcc-mean()-Z | (Time domain Signal). Gravity acceleration signal, derivated by applying an additional low pass butterworth filter with a corner frequency of 30Hz to the tAcc value. Mean estimated from the signals on the 'Z' axis.
9 | tBodyAccJerk-mean()-X | (Time domain Signal). Jerk signals, obtained by deriving linear acceleration and angular velocity in time over the tAcc value. Mean estimated from the signals on the 'X' axis.
10 | tBodyAccJerk-mean()-Y | (Time domain Signal). Jerk signals, obtained by deriving linear acceleration and angular velocity in time over the tAcc value. Mean estimated from the signals on the 'Y' axis.
11 | tBodyAccJerk-mean()-Z | (Time domain Signal). Jerk signals, obtained by deriving linear acceleration and angular velocity in time over the tAcc value. Mean estimated from the signals on the 'Z' axis.
12 | tBodyGyro-mean()-X | (Time domain Signal). Body gyroscope signal, derived from the raw tGyro signal (No additional info was provided). Mean estimated from the signals on the 'X' axis.
13 | tBodyGyro-mean()-Y | (Time domain Signal). Body gyroscope signal, derived from the raw tGyro signal (No additional info was provided). Mean estimated from the signals on the 'Y' axis.
14 | tBodyGyro-mean()-Z | (Time domain Signal). Body gyroscope signal, derived from the raw tGyro signal (No additional info was provided). Mean estimated from the signals on the 'Z' axis.
15 | tBodyGyroJerk-mean()-X | (Time domain Signal). Jerk signals, obtained by deriving linear acceleration and angular velocity in time from the tGyro value. Mean estimated from the signals on the 'X' axis.
16 | tBodyGyroJerk-mean()-Y | (Time domain Signal). Jerk signals, obtained by deriving linear acceleration and angular velocity in time from the tGyro value. Mean estimated from the signals on the 'Y' axis.
17 | tBodyGyroJerk-mean()-Z | (Time domain Signal). Jerk signals, obtained by deriving linear acceleration and angular velocity in time from the tGyro value. Mean estimated from the signals on the 'Z' axis.
18 | tBodyAccMag-mean() | (Time domain Signal). Magnitude of signal, calculated using the Euclidean norm over the tBodyAcc value. Mean estimated from the signals
19 | tGravityAccMag-mean() | (Time domain Signal). Magnitude of signal, calculated using the Euclidean norm over the tGravityAcc value. Mean estimated from the signals
20 | tBodyAccJerkMag-mean() | (Time domain Signal). Magnitude of signal, calculated using the Euclidean norm over the tBodyAccjerk value. Mean estimated from the signals
21 | tBodyGyroMag-mean() | (Time domain Signal). Magnitude of signal, calculated using the Euclidean norm over the tGyro signal. Mean estimated from the signals
22 | tBodyGyroJerkMag-mean() | (Time domain Signal). Magnitude of signal, calculated using the Euclidean norm over the tBodyGyroJerk-XYZ value. Mean estimated from the signals
23 | fBodyAcc-mean()-X | (Frequency domain signal). Body acceleration signal, derivated by applying an additional low pass butterworth filter with a corner frequency of 30Hz to the tAcc value. Mean estimated from the signals on the 'X' axis.
24 | fBodyAcc-mean()-Y | (Frequency domain signal). Body acceleration signal, derivated by applying an additional low pass butterworth filter with a corner frequency of 30Hz to the tAcc value. Mean estimated from the signals on the 'Y' axis.
25 | fBodyAcc-mean()-Z | (Frequency domain signal). Body acceleration signal, derivated by applying an additional low pass butterworth filter with a corner frequency of 30Hz to the tAcc value. Mean estimated from the signals on the 'Z' axis.
26 | fBodyAcc-meanFreq()-X | (Frequency domain signal). Body acceleration signal, derivated by applying an additional low pass butterworth filter with a corner frequency of 30Hz to the tAcc value. Weighted average of the frequency components to obtain a mean frequency on the 'X' axis.
27 | fBodyAcc-meanFreq()-Y | (Frequency domain signal). Body acceleration signal, derivated by applying an additional low pass butterworth filter with a corner frequency of 30Hz to the tAcc value. Weighted average of the frequency components to obtain a mean frequency on the 'Y' axis.
28 | fBodyAcc-meanFreq()-Z | (Frequency domain signal). Body acceleration signal, derivated by applying an additional low pass butterworth filter with a corner frequency of 30Hz to the tAcc value. Weighted average of the frequency components to obtain a mean frequency on the 'Z' axis.
29 | fBodyAccJerk-mean()-X | (Frequency domain signal). obtained by applying a Fast Fourier Transform to the tBodyAccJerk signal. Mean estimated from the signals on the 'X' axis.
30 | fBodyAccJerk-mean()-Y | (Frequency domain signal). obtained by applying a Fast Fourier Transform to the tBodyAccJerk signal. Mean estimated from the signals on the 'Y' axis.
31 | fBodyAccJerk-mean()-Z | (Frequency domain signal). obtained by applying a Fast Fourier Transform to the tBodyAccJerk signal. Mean estimated from the signals on the 'Z' axis.
32 | fBodyAccJerk-meanFreq()-X | (Frequency domain signal). obtained by applying a Fast Fourier Transform to the tBodyAccJerk signal. Weighted average of the frequency components to obtain a mean frequency on the 'X' axis.
33 | fBodyAccJerk-meanFreq()-Y | (Frequency domain signal). obtained by applying a Fast Fourier Transform to the tBodyAccJerk signal. Weighted average of the frequency components to obtain a mean frequency on the 'Y' axis.
34 | fBodyAccJerk-meanFreq()-Z | (Frequency domain signal). obtained by applying a Fast Fourier Transform to the tBodyAccJerk signal. Weighted average of the frequency components to obtain a mean frequency on the 'Z' axis.
35 | fBodyGyro-mean()-X | (Frequency domain signal). obtained by applying a Fast Fourier Transform to the tGyro value. Mean estimated from the signals on the 'X' axis.
36 | fBodyGyro-mean()-Y | (Frequency domain signal). obtained by applying a Fast Fourier Transform to the tGyro value. Mean estimated from the signals on the 'Y' axis.
37 | fBodyGyro-mean()-Z | (Frequency domain signal). obtained by applying a Fast Fourier Transform to the tGyro value. Mean estimated from the signals on the 'Z' axis.
38 | fBodyGyro-meanFreq()-X | (Frequency domain signal). obtained by applying a Fast Fourier Transform to the tGyro value. Weighted average of the frequency components to obtain a mean frequency on the 'X' axis.
39 | fBodyGyro-meanFreq()-Y | (Frequency domain signal). obtained by applying a Fast Fourier Transform to the tGyro value. Weighted average of the frequency components to obtain a mean frequency on the 'Y' axis.
40 | fBodyGyro-meanFreq()-Z | (Frequency domain signal). obtained by applying a Fast Fourier Transform to the tGyro value. Weighted average of the frequency components to obtain a mean frequency on the 'Z' axis.
41 | fBodyAccMag-mean() | (Frequency domain signal). obtained by applying a Fast Fourier Transform to the tBodyAcc signal. Mean estimated from the signals
42 | fBodyAccMag-meanFreq() | (Frequency domain signal). obtained by applying a Fast Fourier Transform to the tBodyAcc signal. Weighted average of the frequency components to obtain a mean frequency
43 | fBodyBodyAccJerkMag-mean() | (Frequency domain signal). Magnitude of signal, calculated using the Euclidean norm over the fBodyAccJerk value. Mean estimated from the signals
44 | fBodyBodyAccJerkMag-meanFreq() | (Frequency domain signal). Magnitude of signal, calculated using the Euclidean norm over the fBodyAccJerk value. Weighted average of the frequency components to obtain a mean frequency
45 | fBodyBodyGyroMag-mean() | (Frequency domain signal). obtained by applying a Fast Fourier Transform to the tBodyGyroMag value. Mean estimated from the signals
46 | fBodyBodyGyroMag-meanFreq() | (Frequency domain signal). obtained by applying a Fast Fourier Transform to the tBodyGyroMag value. Weighted average of the frequency components to obtain a mean frequency
47 | fBodyBodyGyroJerkMag-mean() | (Frequency domain signal). obtained by applying a Fast Fourier Transform to tBodyGyroJerkMag value. Mean estimated from the signals
48 | fBodyBodyGyroJerkMag-meanFreq() | (Frequency domain signal). obtained by applying a Fast Fourier Transform to tBodyGyroJerkMag value. Weighted average of the frequency components to obtain a mean frequency
49 | angle(tBodyAccMeangravity) | Angle . Vector obtained by averaging the signals in a signal window sample. 
50 | angle(tBodyAccJerkMean)gravityMean) | Angle . Vector obtained by averaging the signals in a signal window sample. 
51 | angle(tBodyGyroMeangravityMean) | Angle . Vector obtained by averaging the signals in a signal window sample. 
52 | angle(tBodyGyroJerkMeangravityMean) | Angle . Vector obtained by averaging the signals in a signal window sample. 
53 | angle(XgravityMean) | Angle . Vector obtained by averaging the signals in a signal window sample. 
54 | angle(YgravityMean) | Angle . Vector obtained by averaging the signals in a signal window sample. 
55 | angle(ZgravityMean) | Angle . Vector obtained by averaging the signals in a signal window sample. 
56 | tBodyAcc-std()-X | (Time domain Signal). Raw accelerometer signal, captured at 50 Hz rate, filtered using a median filter and 3rd order low pass Butterworth filter with a corner frequency of 20Hz to remove noise.. Standard deviation estimated from the signals on the 'X' axis.
57 | tBodyAcc-std()-Y | (Time domain Signal). Raw accelerometer signal, captured at 50 Hz rate, filtered using a median filter and 3rd order low pass Butterworth filter with a corner frequency of 20Hz to remove noise.. Standard deviation estimated from the signals on the 'Y' axis.
58 | tBodyAcc-std()-Z | (Time domain Signal). Raw accelerometer signal, captured at 50 Hz rate, filtered using a median filter and 3rd order low pass Butterworth filter with a corner frequency of 20Hz to remove noise.. Standard deviation estimated from the signals on the 'Z' axis.
59 | tGravityAcc-std()-X | (Time domain Signal). Gravity acceleration signal, derivated by applying an additional low pass butterworth filter with a corner frequency of 30Hz to the tAcc value. Standard deviation estimated from the signals on the 'X' axis.
60 | tGravityAcc-std()-Y | (Time domain Signal). Gravity acceleration signal, derivated by applying an additional low pass butterworth filter with a corner frequency of 30Hz to the tAcc value. Standard deviation estimated from the signals on the 'Y' axis.
61 | tGravityAcc-std()-Z | (Time domain Signal). Gravity acceleration signal, derivated by applying an additional low pass butterworth filter with a corner frequency of 30Hz to the tAcc value. Standard deviation estimated from the signals on the 'Z' axis.
62 | tBodyAccJerk-std()-X | (Time domain Signal). Jerk signals, obtained by deriving linear acceleration and angular velocity in time over the tAcc value. Standard deviation estimated from the signals on the 'X' axis.
63 | tBodyAccJerk-std()-Y | (Time domain Signal). Jerk signals, obtained by deriving linear acceleration and angular velocity in time over the tAcc value. Standard deviation estimated from the signals on the 'Y' axis.
64 | tBodyAccJerk-std()-Z | (Time domain Signal). Jerk signals, obtained by deriving linear acceleration and angular velocity in time over the tAcc value. Standard deviation estimated from the signals on the 'Z' axis.
65 | tBodyGyro-std()-X | (Time domain Signal). Body gyroscope signal, derived from the raw tGyro signal (No additional info was provided). Standard deviation estimated from the signals on the 'X' axis.
66 | tBodyGyro-std()-Y | (Time domain Signal). Body gyroscope signal, derived from the raw tGyro signal (No additional info was provided). Standard deviation estimated from the signals on the 'Y' axis.
67 | tBodyGyro-std()-Z | (Time domain Signal). Body gyroscope signal, derived from the raw tGyro signal (No additional info was provided). Standard deviation estimated from the signals on the 'Z' axis.
68 | tBodyGyroJerk-std()-X | (Time domain Signal). Jerk signals, obtained by deriving linear acceleration and angular velocity in time from the tGyro value. Standard deviation estimated from the signals on the 'X' axis.
69 | tBodyGyroJerk-std()-Y | (Time domain Signal). Jerk signals, obtained by deriving linear acceleration and angular velocity in time from the tGyro value. Standard deviation estimated from the signals on the 'Y' axis.
70 | tBodyGyroJerk-std()-Z | (Time domain Signal). Jerk signals, obtained by deriving linear acceleration and angular velocity in time from the tGyro value. Standard deviation estimated from the signals on the 'Z' axis.
71 | tBodyAccMag-std() | (Time domain Signal). Magnitude of signal, calculated using the Euclidean norm over the tBodyAcc value. Standard deviation estimated from the signals
72 | tGravityAccMag-std() | (Time domain Signal). Magnitude of signal, calculated using the Euclidean norm over the tGravityAcc value. Standard deviation estimated from the signals
73 | tBodyAccJerkMag-std() | (Time domain Signal). Magnitude of signal, calculated using the Euclidean norm over the tBodyAccjerk value. Standard deviation estimated from the signals
74 | tBodyGyroMag-std() | (Time domain Signal). Magnitude of signal, calculated using the Euclidean norm over the tGyro signal. Standard deviation estimated from the signals
75 | tBodyGyroJerkMag-std() | (Time domain Signal). Magnitude of signal, calculated using the Euclidean norm over the tBodyGyroJerk-XYZ value. Standard deviation estimated from the signals
76 | fBodyAcc-std()-X | (Frequency domain signal). Body acceleration signal, derivated by applying an additional low pass butterworth filter with a corner frequency of 30Hz to the tAcc value. Standard deviation estimated from the signals on the 'X' axis.
77 | fBodyAcc-std()-Y | (Frequency domain signal). Body acceleration signal, derivated by applying an additional low pass butterworth filter with a corner frequency of 30Hz to the tAcc value. Standard deviation estimated from the signals on the 'Y' axis.
78 | fBodyAcc-std()-Z | (Frequency domain signal). Body acceleration signal, derivated by applying an additional low pass butterworth filter with a corner frequency of 30Hz to the tAcc value. Standard deviation estimated from the signals on the 'Z' axis.
79 | fBodyAccJerk-std()-X | (Frequency domain signal). obtained by applying a Fast Fourier Transform to the tBodyAccJerk signal. Standard deviation estimated from the signals on the 'X' axis.
80 | fBodyAccJerk-std()-Y | (Frequency domain signal). obtained by applying a Fast Fourier Transform to the tBodyAccJerk signal. Standard deviation estimated from the signals on the 'Y' axis.
81 | fBodyAccJerk-std()-Z | (Frequency domain signal). obtained by applying a Fast Fourier Transform to the tBodyAccJerk signal. Standard deviation estimated from the signals on the 'Z' axis.
82 | fBodyGyro-std()-X | (Frequency domain signal). obtained by applying a Fast Fourier Transform to the tGyro value. Standard deviation estimated from the signals on the 'X' axis.
83 | fBodyGyro-std()-Y | (Frequency domain signal). obtained by applying a Fast Fourier Transform to the tGyro value. Standard deviation estimated from the signals on the 'Y' axis.
84 | fBodyGyro-std()-Z | (Frequency domain signal). obtained by applying a Fast Fourier Transform to the tGyro value. Standard deviation estimated from the signals on the 'Z' axis.
85 | fBodyAccMag-std() | (Frequency domain signal). obtained by applying a Fast Fourier Transform to the tBodyAcc signal. Standard deviation estimated from the signals
86 | fBodyBodyAccJerkMag-std() | (Frequency domain signal). Magnitude of signal, calculated using the Euclidean norm over the fBodyAccJerk value. Standard deviation estimated from the signals
87 | fBodyBodyGyroMag-std() | (Frequency domain signal). obtained by applying a Fast Fourier Transform to the tBodyGyroMag value. Standard deviation estimated from the signals
88 | fBodyBodyGyroJerkMag-std() | (Frequency domain signal). obtained by applying a Fast Fourier Transform to tBodyGyroJerkMag value. Standard deviation estimated from the signals
