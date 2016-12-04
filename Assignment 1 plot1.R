# Exploratory-Data-Analysis

# working directory: change to your own folder
setwd("C:/Users/xiling/Desktop")

library(utils)

# Read data
mydata <- read.table ("household_power_consumption.txt", header=TRUE, sep = ";", stringsAsFactors=FALSE, dec=".")
mydatasubset <- mydata[mydata$Date=="1/2/2007" |mydata$Date=="2/2/2007",]
rm(mydata)

# historgram
global_active_power = mydatasubset[["Global_active_power"]]
global_active_power <- as.numeric(global_active_power)
hist(global_active_power, main="Global Active Power", xlab="Global Active Power (kw)", ylab="Frequency", col="red")
