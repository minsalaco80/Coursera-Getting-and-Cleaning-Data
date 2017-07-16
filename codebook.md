Code Book

Subject: ID of the volunteer. Range 1-30.

Activity: Type of activity performed by volunteer. Labeled 1-6
      1. WALKING 
      2. WALKING_UPSTAIRS
      3. WALKING_DOWNSTAIRS 
      4. SITTING 
      5. STANDING 
      6. LAYING
      
Feature: Obtained from an accelerometer and gyroscope yeilding a 3-axial signal in the X,Y,Z direction.
      tBodyAcc-XYZ
      tGravityAcc-XYZ
      tBodyAccJerk-XYZ
      tBodyGyro-XYZ
      tBodyGyroJerk-XYZ
      tBodyAccMag
      tGravityAccMag
      tBodyAccJerkMag
      tBodyGyroMag
      tBodyGyroJerkMag
      fBodyAcc-XYZ
      fBodyAccJerk-XYZ
      fBodyGyro-XYZ
      fBodyAccMag
      fBodyAccJerkMag
      fBodyGyroMag
      fBodyGyroJerkMag
      
Variables: Estimated from the feature signals.
      mean(): Mean value
      std(): Standard deviation 
      
Tidy Data Columns: Consist of Subject (see above), Activity (see above), and the mean/std variables for each measured Feature (see below).
  Tidy Data Column headings listing mean/std for a feature and it's corresponding direction, i.e.: 
      tBodyAccelerometer-mean()-X (radians per sec)
      tBodyAccelerometer-mean()-Y (radians per sec)
      tBodyAccelerometer-mean()-Z (radians per sec)
      tBodyAccelerometer-std()-X (radians per sec)
      tBodyAccelerometer-std()-Y (radians per sec)
      tBodyAccelerometer-std()-Z (radians per sec)
      fBodyAccelerometer-mean()-X (hertz)
      fBodyAccelerometer-mean()-Y (hertz)
      fBodyAccelerometer-mean()-Z (hertz)
      fBodyAccelerometer-std()-X (hertz)
      fBodyAccelerometer-std()-Y (hertz)
      fBodyAccelerometer-std()-Z (hertz)
