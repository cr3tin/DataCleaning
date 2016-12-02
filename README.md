## run_analysis.R

The run_analysis.R script contains a batch of methods which achieve each of the requirements in the Data Cleaning Project.

### readDataSet <- function( type )
this function accepts a type variable which can either be "test" or "train"
based on this it will read the test or training data.

### mergeData <- function()
this function makes use of the readDataSet to read both the test and train data
it then combines them into a single Dataset

### trimData <- function()
this function uses the mergeData function to gather all the data, it then removes 
all columns that arnt the subject, activity, a mean or a std deviation 

### updateActivityNames <- function()
this function adds meaningful names to the Activities

### updateColumnLabels <- function()
this functions cleans up the variable names

### summariseData <- function()
this function summarises the data into an average of each variable for each subject.

Calling the last function summariseData() will perform all the preceding actions and return the tidy Data set.