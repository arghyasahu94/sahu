                       ###Practical Problem-3

#Q1
outcome <- read.csv("outcome-of-care-measures.csv", colClasses = "character")
outcome
outcome[, 11] <- as.numeric(outcome[, 11])
hist(outcome[, 11],col="green",main="histogram of the 30-day death rates from heart attack")



#Q2
data <- read.csv("outcome-of-care-measures.csv", colClasses = "character")
best <- function(state, outcome){
data.state <- data[data$State==state,]
if(outcome=="heart attack"){
min(as.double(data.state[,11]))
}else if(outcome=="heart failure"){
min(as.double(data.state[,17]))
}else{
min(as.double(data.state[,23]))
}

}
best("TX","heart failure")

 data.state <- data[data$State==,]

