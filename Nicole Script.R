##Task 1: Replicating head function
#Load variable file in 
setwd("~/Documents/Biocomputing2020_Tutorial09/")
fileName <-  "filename.txt"
textFile <- scan(file = fileName)
#Let A = # of lines 
#Take top # of lines by indexing and print
A <- 10 
textFile[1:A]

##Task 2: Working with iris.csv
#Load iris.csv in
setwd("~/Documents/Biocomputing2020_Tutorial09/")
dat <- read.csv(file = "iris.csv", header = TRUE)
#print the last 2 rows in the last 2 columns to the R terminal
dim(dat)
dat[149:150,c(4,5)]
#get the number of observations for each species included in the data set
table(dat$Species)
#get rows with Sepal.Width > 3.5
dat[dat$Sepal.Width>3.5,]
#write the data for the species setosa to a comma-delimited file names ‘setosa.csv’
setosaRows <- dat[dat$Species== "setosa",]
write.table(setosaRows, file = "setosa.csv", sep = ",", row.names = FALSE, col.names = TRUE)
#calculate the mean, minimum, and maximum of Petal.Length for observations from virginica
virginicaRows <- dat[dat$Species == "virginica",]
mean(virginicaRows$Petal.Length)
min(virginicaRows$Petal.Length)
max(virginicaRows$Petal.Length)


