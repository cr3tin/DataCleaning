# this function accepts a type variable which can either be "test" or "train"
# based on this it will read the test or training data.
readDataSet <- function( type ){
	print( paste( "Reading data of type:", type ))
	flush.console()
	# we need the features to get the column names of the x data
	features <- read.csv( "UCI HAR Dataset/features.txt",header=FALSE, sep=" ", stringsAsFactors=FALSE)

	# read the X data and set the column names using features above
	xname <- gsub("#",type,"UCI HAR Dataset/#/X_#.txt")
	xtest <- read.csv( xname, header=FALSE, sep="" )
	names(xtest) <- features[,2]

	# read the Activities so we can bind them to the data in X
	yname <- gsub("#",type,"UCI HAR Dataset/#/y_#.txt")
	ytest <- read.csv( yname, header=FALSE, sep="" )
	names(ytest) <- "Activity"

	# read the subjects so we can bind then to the data in X
	subjectname <- gsub("#",type,"UCI HAR Dataset/#/subject_#.txt")
	subjectTest <- read.csv( subjectname, header=FALSE, sep="" )
	names(subjectTest) <- "Subject"

	# perfrom the bindings to create a complete dataset
	testData <- cbind( ytest, xtest )
	testData <- cbind( subjectTest, testData )
	testData
}

# this function makes use of the readDataSet to read both the test and train data
# it then combines them into a single Dataset
mergeData <- function(){
	test <- readDataSet("test")
	train <- readDataSet("train")
	print( "Merging Test and Train Data..." )
	flush.console()
	mergedData <- rbind( test, train )
	mergedData
}

# this function uses the mergeData function to gather all the data, it then removes 
# all columns that arnt the subject, activity, a mean or a std deviation 
trimData <- function(){
	allData <- mergeData()
	print( "Removing unwanted columns..." )
	flush.console()
	trimData <- allData[,grepl("\\bmean()\\b|std()|Activity|Subject", colnames(allData))]
	trimData
}

# this function adds meaningful names to the Activities
updateActivityNames <- function(){
	data <- trimData()

	actNames <- read.csv( "UCI HAR Dataset/activity_labels.txt",header=FALSE, sep=" ", stringsAsFactors=FALSE)
	names(actNames) <- c("ID","ActivityName")
	
	print( "Updating Activity Names..." )
	flush.console()

	data <- left_join(data, actNames, by = c("Activity" = "ID"))
	data
}

# this functions cleans up the variable names
updateColumnLabels <- function() {
	data <- updateActivityNames()

	print( "Updating Column Names..." )
	flush.console()

	namesList <- names(data)
	namesList <- gsub("^t","time",namesList)
	namesList <- gsub("^f","frequency",namesList)
	namesList <- gsub("mean","Mean",namesList)
	namesList <- gsub("std","StdDev",namesList)
	namesList <- gsub("[^[:alnum:][:blank:]+?&/\\]","",namesList)
	names(data) <- namesList
	data
}

# this function summarises the data into an average of each variable for each subject.
summariseData <- function() {
	library(dplyr)
	data <- updateColumnLabels() %>% group_by_(.dots=c("Subject","ActivityName")) %>% summarize_each(funs(mean))
	data
}
