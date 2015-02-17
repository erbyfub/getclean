Data:
The data used were taken from a study of 30 volunteers aged 19-48 years. These wore a Samsung Galaxy S II smartphone while performing various activities, and the data from the phone's gyroscope and accelerometer were collected and assigned to the specific subject and activity. The data comes from the following study:

Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

Variables:
The phone signals were separated into three dimensions (X, Y, and Z) and signals from bodily motion were separated from gravity-induced signals. Angular velocity and magnitude of motions were calculated as separate variables. Also, Fast Fourier Transform was applied to derive other variables from some of the signals. For each signal, variables indicate average, standard deviation, maximum, minimum, etc, but only average and standard deviation were used in this analysis.

Transformations/Analysis:
The code in this analysis selects out only the mean and standard deviation variables from the data, includes information about the activity performed and the subject performing the activity for each observation, and combines data that were separated into "test" and "training" sets into one set. (70% of subjects had been assigned to "training" and the rest to "test".)

Then from this combined data set, the mean values for each variable for each subject for each activity are extracted and placed in a new data set.