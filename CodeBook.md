Data:
The data used were taken from a study of 30 volunteers aged 19-48 years. These wore a Samsung Galaxy S II smartphone while performing various activities, and the data from the phone's gyroscope and accelerometer were collected and assigned to the specific subject and activity. The data comes from the following study:

Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

Transformations/Analysis:
The code in this analysis selects out only the mean and standard deviation variables from the data, includes information about the activity performed and the subject performing the activity for each observation, and combines data that were separated into "test" and "training" sets into one set. (70% of subjects had been assigned to "training" and the rest to "test".)

Then from this combined data set, the mean values for each variable for each subject for each activity are extracted and placed in a new data set.

Variables:
The phone signals were separated into three dimensions (X, Y, and Z) and signals from bodily motion were separated from gravity-induced signals. Angular velocity and magnitude of motions were calculated as separate variables. Also, Fast Fourier Transform was applied to derive other variables from some of the signals. For each signal, variables indicate average, standard deviation, maximum, minimum, etc, but only average and standard deviation were used in this analysis.

Variable names:
subject: ID number of the subject performing the activity; 1 to 30

activity: One of six activities being performed while wearing the smartphone; walking, sitting, lying, standing, walking up stairs, walking down stairs

timebodyaccelerometermeanxaxis: Average measurement from accelerometer reading of body signal on the X axis

timebodyaccelerometermeanyaxis: Average measurement from accelerometer reading of body signal on the Y axis

timebodyaccelerometermeanzaxis: Average measurement from accelerometer reading of body signal on the Z axis

timebodyaccelerometerstdxaxis: Standard deviation of measurement from accelerometer reading of body signal on the X axis

timebodyaccelerometerstdyaxis: Standard deviation of measurement from accelerometer reading of body signal on the Y axis

timebodyaccelerometerstdzaxis: Standard deviation of measurement from accelerometer reading of body signal on the Z axis

timegravityaccelerometermeanxaxis: Average measurement from accelerometer reading of gravity signal on the X axis

timegravityaccelerometermeanyaxis: Average measurement from accelerometer reading of gravity signal on the Y axis

timegravityaccelerometermeanzaxis: Average measurement from accelerometer reading of gravity signal on the Z axis

timegravityaccelerometerstdxaxis: Standard deviation of measurement from accelerometer reading of gravity signal on the X axis

timegravityaccelerometerstdyaxis: Standard deviation of measurement from accelerometer reading of gravity signal on the Y axis

timegravityaccelerometerstdzaxis: Standard deviation of measurement from accelerometer reading of gravity signal on the Z axis

timebodyaccelerometerjerkmeanxaxis: Average angular velocity measurement from accelerometer reading of body signal on the X axis

timebodyaccelerometerjerkmeanyaxis: Average angular velocity measurement from accelerometer reading of body signal on the Y axis

timebodyaccelerometerjerkmeanzaxis: Average angular velocity measurement from accelerometer reading of body signal on the Z axis

timebodyaccelerometerjerkstdxaxis: Standard deviation of the angular velocity measurement from accelerometer reading of body signal on the X axis

timebodyaccelerometerjerkstdyaxis: Standard deviation of the angular velocity measurement from accelerometer reading of body signal on the Y axis

timebodyaccelerometerjerkstdzaxis: Standard deviation of the angular velocity measurement from accelerometer reading of body signal on the Z axis

timebodygyroscopemeanxaxis: Average measurement from gyroscope reading of body signal on the X axis

timebodygyroscopemeanyaxis: Average measurement from gyroscope reading of body signal on the Y axis

timebodygyroscopemeanzaxis: Average measurement from gyroscope reading of body signal on the Z axis

timebodygyroscopestdxaxis: Standard deviation of measurement from gyroscope reading of body signal on the X axis

timebodygyroscopestdyaxis: Standard deviation of measurement from gyroscope reading of body signal on the Y axis

timebodygyroscopestdzaxis: Standard deviation of measurement from gyroscope reading of body signal on the Z axis

timebodygyroscopejerkmeanxaxis: Average angular velocity measurement from gyroscope reading of body signal on the X axis

timebodygyroscopejerkmeanyaxis: Average angular velocity measurement from gyroscope reading of body signal on the Y axis

timebodygyroscopejerkmeanzaxis: Average angular velocity measurement from gyroscope reading of body signal on the Z axis

timebodygyroscopejerkstdxaxis: Standard deviation of the angular velocity measurement from gyroscope reading of body signal on the X axis

timebodygyroscopejerkstdyaxis: Standard deviation of the angular velocity measurement from gyroscope reading of body signal on the Y axis

timebodygyroscopejerkstdzaxis: Standard deviation of the angular velocity measurement from gyroscope reading of body signal on the Z axis

timebodyaccelerometermagnitudemean: Average magnitude of accelerometer measurements reading the body signal

timebodyaccelerometermagnitudestd: Standard deviation of magnitude measurement from accelerometer reading the body signal

timegravityaccelerometermagnitudemean: Average magnitude of accelerometer measurements reading the gravity signal

timegravityaccelerometermagnitudestd: Standard deviation of magnitude measurement from accelerometer reading the gravity signal

timebodyaccelerometerjerkmagnitudemean: Average magnitude of accelerometer measurements of angular velocity reading the body signal

timebodyaccelerometerjerkmagnitudestd: Standard deviation of magnitude measurement of angular velocity from accelerometer reading the body signal

timebodygyroscopemagnitudemean: Average magnitude of gyroscope measurements reading the body signal

timebodygyroscopemagnitudestd: Standard deviation of magnitude measurement from gyroscope reading the body signal

timebodygyroscopejerkmagnitudemean: Average magnitude of gyroscope measurements of angular velocity reading the body signal

timebodygyroscopejerkmagnitudestd: Standard deviation of magnitude measurement of angular velocity from gyroscope reading the body signal

frequencybodyaccelerometermeanxaxis: Fourier Transform of average measurement from accelerometer reading of body signal on the X axis

frequencybodyaccelerometermeanyaxis: Fourier Transform of average measurement from accelerometer reading of body signal on the Y axis

frequencybodyaccelerometermeanzaxis: Fourier Transform of average measurement from accelerometer reading of body signal on the Z axis

frequencybodyaccelerometerstdxaxis: Fourier Transform of standard deviation of measurement from accelerometer reading of body signal on the X axis

frequencybodyaccelerometerstdyaxis: Fourier Transform of standard deviation of measurement from accelerometer reading of body signal on the Y axis

frequencybodyaccelerometerstdzaxis: Fourier Transform of standard deviation of measurement from accelerometer reading of body signal on the Z axis

frequencybodyaccelerometerjerkmeanxaxis: Fourier Transform of average angular velocity measurement from accelerometer reading of body signal on the X axis

frequencybodyaccelerometerjerkmeanyaxis: Fourier Transform of average angular velocity measurement from accelerometer reading of body signal on the Y axis

frequencybodyaccelerometerjerkmeanzaxis: Fourier Transform of average angular velocity measurement from accelerometer reading of body signal on the Z axis

frequencybodyaccelerometerjerkstdxaxis: Fourier Transform of standard deviation of the angular velocity measurement from accelerometer reading of body signal on the X axis

frequencybodyaccelerometerjerkstdyaxis: Fourier Transform of standard deviation of the angular velocity measurement from accelerometer reading of body signal on the Y axis

frequencybodyaccelerometerjerkstdzaxis: Fourier Transform of standard deviation of the angular velocity measurement from accelerometer reading of body signal on the Z axis

frequencybodygyroscopemeanxaxis: Fourier Transform of average measurement from gyroscope reading of body signal on the X axis

frequencybodygyroscopemeanyaxis: Fourier Transform of average measurement from gyroscope reading of body signal on the Y axis

frequencybodygyroscopemeanzaxis: Fourier Transform of average measurement from gyroscope reading of body signal on the Z axis

frequencybodygyroscopestdxaxis: Fourier Transform of standard deviation of measurement from gyroscope reading of body signal on the X axis

frequencybodygyroscopestdyaxis: Fourier Transform of standard deviation of measurement from gyroscope reading of body signal on the Y axis

frequencybodygyroscopestdzaxis: Fourier Transform of standard deviation of measurement from gyroscope reading of body signal on the Z axis

frequencybodyaccelerometermagnitudemean: Fourier Transform of average magnitude of accelerometer measurements reading the body signal

frequencybodyaccelerometermagnitudestd: Fourier Transform of standard deviation of magnitude measurement from accelerometer reading the body signal

frequencybodybodyaccelerometerjerkmagnitudemean: Fourier Transform of average magnitude of accelerometer measurements of angular velocity reading the body signal

frequencybodybodyaccelerometerjerkmagnitudestd: Fourier Transform of standard deviation of magnitude measurement of angular velocity from accelerometer reading the body signal

frequencybodybodygyroscopemagnitudemean: Fourier Transform of average magnitude of gyroscope measurements reading the body signal

frequencybodybodygyroscopemagnitudestd: Fourier Transform of standard deviation of magnitude measurement from gyroscope reading the body signal

frequencybodybodygyroscopejerkmagnitudemean: Fourier Transform of average magnitude of gyroscope measurements of angular velocity reading the body signal

frequencybodybodygyroscopejerkmagnitudestd: Fourier Transform of standard deviation of magnitude measurement from gyroscope reading the body signal