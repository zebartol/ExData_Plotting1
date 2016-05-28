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

#Histograma : PLot 1
par(mfrow=c(1,1))
hist(power$GlobalActivePower, col ="red", xlab = "Global Active Power 
     (killowatts)",  main = "Global Active Power")

dev.copy(png,file = "Plot1.png", width = 480, height = 480)
dev.off()


