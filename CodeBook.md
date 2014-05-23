TidyData Codebook
========================================================

This document describe all the variables that are in the 'tidyData.txt' data set that contains the average of each variable for each activity and each subject. 

The original dataset came from [UC Irvine Machine Learning Repository](http://archive.ics.uci.edu/ml/).

* Dataset: [Human Activity Recognition Using Smartphones](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)

#### Steps to create data set:

1. Merges the training and the test sets to create one data set.
2. Merges the training and the test labels to create one labels data set.
3. Merges the data, labels, and the subject to create the tidydata set.
4. Use 'aggregate' command to get the average of each variable for each activity(y) and each subject(subject)
5. Merges the activity with the corresponding labels into tidyData set
6. Remove '-' and '()' in the columns name from the tidyData set
7. Write tidyData set to file call 'tidyData.txt'


#### Variable in tidyData set
---------------------------------------------------------
* activity
* labels
* subject
* tBodyAccXYZ
* tGravityAccXYZ
* tBodyAccJerkXYZ
* tBodyGyroXYZ
* tBodyGyroJerkXYZ
* tBodyAccMag
* tGravityAccMag
* tBodyAccJerkMag
* tBodyGyroMag
* tBodyGyroJerkMag
* fBodyAccXYZ
* fBodyAccJerkXYZ
* fBodyGyroXYZ
* fBodyAccMag
* fBodyAccJerkMag
* fBodyGyroMag
* fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

* mean: Mean value
* std: Standard deviation
* mad: Median absolute deviation 
* max: Largest value in array
* min: Smallest value in array
* sma: Signal magnitude area
* energy: Energy measure. Sum of the squares divided by the number of values. 
* iqr: Interquartile range 
* entropy: Signal entropy
* arCoeff: Autorregresion coefficients with Burg order equal to 4
* correlation: correlation coefficient between two signals
* maxInds: index of the frequency component with largest magnitude
* meanFreq: Weighted average of the frequency components to obtain a mean frequency
* skewness: skewness of the frequency domain signal 
* kurtosis: kurtosis of the frequency domain signal 
* bandsEnergy: Energy of a frequency interval within the 64 bins of the FFT of each window.
* angle: Angle between to vectors.

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle variable:

* gravityMean
* tBodyAccMean
* tBodyAccJerkMean
* tBodyGyroMean
* tBodyGyroJerkMean

