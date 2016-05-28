# exploratory-data-analysis
# Course Project 1 
# Zebartol
# Week 1

#Libraries
library(grDevices)


#reading the data
setwd("C:/DATAscienceCoursera/Base de dados - curso/Exploratory")

power<-read.table('power_consumption.txt',header=TRUE,sep='|')
power$DateTime<-as.POSIXlt(power$DateTime)

head(power)
str(power)

#Line graph : PLot 2
plot(power$DateTime,power$GlobalActivePower,ylab = "Global Active Power 
     (killowatts)",xlab="",  main = "Global Active Power (killowatts)",type="l")
dev.copy(png,file = "Plot2.png", width = 480, height = 480)
dev.off()
