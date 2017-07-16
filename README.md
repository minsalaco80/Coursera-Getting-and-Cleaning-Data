# Coursera-Getting-and-Cleaning-Data

This project is required for the completion of the "Getting and Cleaning Data" course offered by Coursera.  An R script, run_analysis.R, was created to do the following:

1.  Download a dataset built from the recordings of 30 subjects performing activities of daily living (ADL) while carrying a waist-mounted smartphone with embedded inertial sensors. 

2.  Read the features.txt and activity_labels.txt files as characters.

3.  Set-up the extraction of the two variables "mean()" and "std()" from the reclassified features.txt.

4. Load the "test" and "train" datesets with the two variables "mean()" and "std()" extracted.

5. Merge the two datasets and add column names for the "subject", "activity", and the mean/std for each feature.

6. Converts the activity and subject columns into factors.

7. Creates a tidy dataset that consists of the average (mean) value of each variable for each subject and activity pair.
    
    Output=tidydata.txt
