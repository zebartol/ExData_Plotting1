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

#Multi-Line graph : PLot 3
plot(power$DateTime,power$SubMetering1,ylab = "Energy sub metering",xlab="", main = "Energy sub metering",type="l")
lines(power$DateTime,power$SubMetering2, col ="red")
lines(power$DateTime,power$SubMetering3, col ="blue")

legend("topright", legend=c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'),
       col=c('black', 'red', 'blue'), lty=c(1, 1, 1))


dev.copy(png,file = "Plot3.png", width = 480, height = 480)
dev.off()
