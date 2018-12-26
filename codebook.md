Code book for Coursera Getting and Cleaning Data course project

The data set that this code book pertains to is located in the tidy_data.txt file of this repository.

See the README.md file of this repository for background information on this data set.

The structure of the data set is described in the Data section, its variables are listed in the Variables section, and the transformations that were carried out to obtain the data set based on the source data are presented in the Transformations section.
Data

The tidy_data.txt data file is a text file, containing space-separated values.

The first row contains the names of the variables, which are listed and described in the Variables section, and the following rows contain the values of these variables.
Variables

Each row contains, for a given subject and activity, 79 averaged signal measurements.
Identifiers

    subject

    Subject identifier, integer, ranges from 1 to 30.

    activity

    Activity identifier, string with 6 possible values:
        WALKING: subject was walking
        WALKING_UPSTAIRS: subject was walking upstairs
        WALKING_DOWNSTAIRS: subject was walking downstairs
        SITTING: subject was sitting
        STANDING: subject was standing
        LAYING: subject was laying

Average of measurements

All measurements are floating-point values, normalised and bounded within [-1,1].

Prior to normalisation, acceleration measurements (variables containing Accelerometer) were made in g's (9.81 m.s⁻²) and gyroscope measurements (variables containing Gyroscope) were made in radians per second (rad.s⁻¹).

Magnitudes of three-dimensional signals (variables containing Magnitude) were calculated using the Euclidean norm.

The measurements are classified in two domains:

    Time-domain signals (variables prefixed by timeDomain), resulting from the capture of accelerometer and gyroscope raw signals.

    Frequency-domain signals (variables prefixed by frequencyDomain), resulting from the application of a Fast Fourier Transform (FFT) to some of the time-domain signals.

Time- signals

    Average time- body acceleration in the X, Y and Z directions:
        timeBodyAccelerometermeanX
        timeBodyAccelerometermeanY
        timeBodyAccelerometermeanZ

    Standard deviation of the time- body acceleration in the X, Y and Z directions:
        timeBodyAccelerometerstandarddeviationX
        timeBodyAccelerometerstandarddeviationY
        timeBodyAccelerometerstandarddeviationZ

    Average time- gravity acceleration in the X, Y and Z directions:
        timeGravityAccelerometermeanX
        timeGravityAccelerometermeanY
        timeGravityAccelerometermeanZ

    Standard deviation of the time- gravity acceleration in the X, Y and Z directions:
        timeGravityAccelerometerstandarddeviationX
        timeGravityAccelerometerstandarddeviationY
        timeGravityAccelerometerstandarddeviationZ

    Average time- body acceleration jerk (derivation of the acceleration in time) in the X, Y and Z directions:
        timeBodyAccelerometerJerkmeanX
        timeBodyAccelerometerJerkmeanY
        timeBodyAccelerometerJerkmeanZ

    Standard deviation of the time- body acceleration jerk (derivation of the acceleration in time) in the X, Y and Z directions:
        timeBodyAccelerometerJerkstandarddeviationX
        timeBodyAccelerometerJerkstandarddeviationY
        timeBodyAccelerometerJerkstandarddeviationZ

    Average time- body angular velocity in the X, Y and Z directions:
        timeBodyGyroscopemeanX
        timeBodyGyroscopemeanY
        timeBodyGyroscopemeanZ

    Standard deviation of the time- body angular velocity in the X, Y and Z directions:
        timeBodyGyroscopestandarddeviationX
        timeBodyGyroscopestandarddeviationY
        timeBodyGyroscopestandarddeviationZ

    Average time- body angular velocity jerk (derivation of the angular velocity in time) in the X, Y and Z directions:
        timeBodyGyroscopeJerkmeanX
        timeBodyGyroscopeJerkmeanY
        timeBodyGyroscopeJerkmeanZ

    Standard deviation of the time- body angular velocity jerk (derivation of the angular velocity in time) in the X, Y and Z directions:
        timeBodyGyroscopeJerkstandarddeviationX
        timeBodyGyroscopeJerkstandarddeviationY
        timeBodyGyroscopeJerkstandarddeviationZ

    Average and standard deviation of the time- magnitude of body acceleration:
        timeBodyAccelerometerMagnitudemean
        timeBodyAccelerometerMagnitudestandarddeviation

    Average and standard deviation of the time- magnitude of gravity acceleration:
        timeGravityAccelerometerMagnitudemean
        timeGravityAccelerometerMagnitudestandarddeviation

    Average and standard deviation of the time- magnitude of body acceleration jerk (derivation of the acceleration in time):
        timeBodyAccelerometerJerkMagnitudemean
        timeBodyAccelerometerJerkMagnitudestandarddeviation

    Average and standard deviation of the time- magnitude of body angular velocity:
        timeBodyGyroscopeMagnitudemean
        timeBodyGyroscopeMagnitudestandarddeviation

    Average and standard deviation of the time- magnitude of body angular velocity jerk (derivation of the angular velocity in time):
        timeBodyGyroscopeJerkMagnitudemean
        timeBodyGyroscopeJerkMagnitudestandarddeviation

Frequency- signals

    Average frequency- body acceleration in the X, Y and Z directions:
        frequencyBodyAccelerometermeanX
        frequencyBodyAccelerometermeanY
        frequencyBodyAccelerometermeanZ

    Standard deviation of the frequency- body acceleration in the X, Y and Z directions:
        frequencyBodyAccelerometerstandarddeviationX
        frequencyBodyAccelerometerstandarddeviationY
        frequencyBodyAccelerometerstandarddeviationZ

    Weighted average of the frequency components of the frequency- body acceleration in the X, Y and Z directions:
        frequencyBodyAccelerometermeanFrequencyX
        frequencyBodyAccelerometermeanFrequencyY
        frequencyBodyAccelerometermeanFrequencyZ

    Average frequency- body acceleration jerk (derivation of the acceleration in time) in the X, Y and Z directions:
        frequencyBodyAccelerometerJerkmeanX
        frequencyBodyAccelerometerJerkmeanY
        frequencyBodyAccelerometerJerkmeanZ

    Standard deviation of the frequency- body acceleration jerk (derivation of the acceleration in time) in the X, Y and Z directions:
        frequencyBodyAccelerometerJerkstandarddeviationX
        frequencyBodyAccelerometerJerkstandarddeviationY
        frequencyBodyAccelerometerJerkstandarddeviationZ

    Weighted average of the frequency components of the frequency- body acceleration jerk (derivation of the acceleration in time) in the X, Y and Z directions:
        frequencyBodyAccelerometerJerkmeanFrequencyX
        frequencyBodyAccelerometerJerkmeanFrequencyY
        frequencyBodyAccelerometerJerkmeanFrequencyZ

    Average frequency- body angular velocity in the X, Y and Z directions:
        frequencyBodyGyroscopemeanX
        frequencyBodyGyroscopemeanY
        frequencyBodyGyroscopemeanZ

    Standard deviation of the frequency- body angular velocity in the X, Y and Z directions:
        frequencyBodyGyroscopestandarddeviationX
        frequencyBodyGyroscopestandarddeviationY
        frequencyBodyGyroscopestandarddeviationZ

    Weighted average of the frequency components of the frequency- body angular velocity in the X, Y and Z directions:
        frequencyBodyGyroscopemeanFrequencyX
        frequencyBodyGyroscopemeanFrequencyY
        frequencyBodyGyroscopemeanFrequencyZ

    Average, standard deviation, and weighted average of the frequency components of the frequency- magnitude of body acceleration:
        frequencyBodyAccelerometerMagnitudemean
        frequencyBodyAccelerometerMagnitudestandarddeviation
        frequencyBodyAccelerometerMagnitudemeanFrequency

    Average, standard deviation, and weighted average of the frequency components of the frequency- magnitude of body acceleration jerk (derivation of the acceleration in time):
        frequencyBodyAccelerometerJerkMagnitudemean
        frequencyBodyAccelerometerJerkMagnitudestandarddeviation
        frequencyBodyAccelerometerJerkMagnitudemeanFrequency

    Average, standard deviation, and weighted average of the frequency components of the frequency- magnitude of body angular velocity:
        frequencyBodyGyroscopeMagnitudemean
        frequencyBodyGyroscopeMagnitudestandarddeviation
        frequencyBodyGyroscopeMagnitudemeanFrequency

    Average, standard deviation, and weighted average of the frequency components of the frequency- magnitude of body angular velocity jerk (derivation of the angular velocity in time):
        frequencyBodyGyroscopeJerkMagnitudemean
        frequencyBodyGyroscopeJerkMagnitudestandarddeviation
        frequencyBodyGyroscopeJerkMagnitudemeanFrequency
