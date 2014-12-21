project
=======

The file run_analysis.R can be run as long as the Samsung data is in your working directory. 
The output should is the tidy data set submitted for part 1.

The code works as follows:

The code extract the names of the feature vector and stores it in featureVec.
Then it reads the test and training data for X and merges them together. It uses the column names in featureVec to 
while reading the X data to initialise column names.
Then it reads the activity data and stores as activity_labels.
Then it reads the y data for train and test sets and merges them together.
Then it uses activity_labels to put correct identifiers for each activity in y data.
Then it merges the x and y data together to create mergedData.
Then it reads the subject id (for both train and test data) and adds it to the mergedData.

Then the code uses the plyr package to summarize the means for various activities for each person which us stored in 
tide_walking / tidy_standing etc. for each activity.

Then the code merges all the tidy data-sets in to tidy_merged.


Column Names for tidy merged. The first column has the Subject Id and the last cloumn
has the activity name. Rest of column names are are the same as those described in the data set.
Please see below for a list:
[1] "Subject.Id"                      "tBodyAcc.mean...X"              
 [3] "tBodyAcc.mean...Y"               "tBodyAcc.mean...Z"              
 [5] "tGravityAcc.mean...X"            "tGravityAcc.mean...Y"           
 [7] "tGravityAcc.mean...Z"            "tBodyAccJerk.mean...X"          
 [9] "tBodyAccJerk.mean...Y"           "tBodyAccJerk.mean...Z"          
[11] "tBodyGyro.mean...X"              "tBodyGyro.mean...Y"             
[13] "tBodyGyro.mean...Z"              "tBodyGyroJerk.mean...X"         
[15] "tBodyGyroJerk.mean...Y"          "tBodyGyroJerk.mean...Z"         
[17] "tBodyAccMag.mean.."              "tGravityAccMag.mean.."          
[19] "tBodyAccJerkMag.mean.."          "tBodyGyroMag.mean.."            
[21] "tBodyGyroJerkMag.mean.."         "fBodyAcc.mean...X"              
[23] "fBodyAcc.mean...Y"               "fBodyAcc.mean...Z"              
[25] "fBodyAcc.meanFreq...X"           "fBodyAcc.meanFreq...Y"          
[27] "fBodyAcc.meanFreq...Z"           "fBodyAccJerk.mean...X"          
[29] "fBodyAccJerk.mean...Y"           "fBodyAccJerk.mean...Z"          
[31] "fBodyAccJerk.meanFreq...X"       "fBodyAccJerk.meanFreq...Y"      
[33] "fBodyAccJerk.meanFreq...Z"       "fBodyGyro.mean...X"             
[35] "fBodyGyro.mean...Y"              "fBodyGyro.mean...Z"             
[37] "fBodyGyro.meanFreq...X"          "fBodyGyro.meanFreq...Y"         
[39] "fBodyGyro.meanFreq...Z"          "fBodyAccMag.mean.."             
[41] "fBodyAccMag.meanFreq.."          "fBodyBodyAccJerkMag.mean.."     
[43] "fBodyBodyAccJerkMag.meanFreq.."  "fBodyBodyGyroMag.mean.."        
[45] "fBodyBodyGyroMag.meanFreq.."     "fBodyBodyGyroJerkMag.mean.."    
[47] "fBodyBodyGyroJerkMag.meanFreq.." "tBodyAcc.std...X"               
[49] "tBodyAcc.std...Y"                "tBodyAcc.std...Z"               
[51] "tGravityAcc.std...X"             "tGravityAcc.std...Y"            
[53] "tGravityAcc.std...Z"             "tBodyAccJerk.std...X"           
[55] "tBodyAccJerk.std...Y"            "tBodyAccJerk.std...Z"           
[57] "tBodyGyro.std...X"               "tBodyGyro.std...Y"              
[59] "tBodyGyro.std...Z"               "tBodyGyroJerk.std...X"          
[61] "tBodyGyroJerk.std...Y"           "tBodyGyroJerk.std...Z"          
[63] "tBodyAccMag.std.."               "tGravityAccMag.std.."           
[65] "tBodyAccJerkMag.std.."           "tBodyGyroMag.std.."             
[67] "tBodyGyroJerkMag.std.."          "fBodyAcc.std...X"               
[69] "fBodyAcc.std...Y"                "fBodyAcc.std...Z"               
[71] "fBodyAccJerk.std...X"            "fBodyAccJerk.std...Y"           
[73] "fBodyAccJerk.std...Z"            "fBodyGyro.std...X"              
[75] "fBodyGyro.std...Y"               "fBodyGyro.std...Z"              
[77] "fBodyAccMag.std.."               "fBodyBodyAccJerkMag.std.."      
[79] "fBodyBodyGyroMag.std.."          "fBodyBodyGyroJerkMag.std.."     
[81] "activity"                       

