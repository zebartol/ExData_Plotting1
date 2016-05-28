
 # exploratory-data-analysis
 # Course Project 1 
 # Zebartol
 # Week 1

# required packages
library(data.table)
library(lubridate)
library(dplyr)

# set working directory 
setwd("C:/DATAscienceCoursera/Base de dados - curso/Exploratory")

# download the zip file and unzip
#file.url<-'https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip'
#download.file(file.url,destfile='source data/power_consumption.zip')
#unzip('source data/power_consumption.zip',exdir='source data',overwrite=TRUE)


# read the raw table and limit to 2 days
variable.class<-c(rep('character',2),rep('numeric',7))
power<-read.table('household_power_consumption.txt',header=TRUE,
       sep=';',na.strings='?',colClasses=variable.class)
power<-power[power$Date=='1/2/2007' | power$Date=='2/2/2007',]

# clean up the variable names and convert date/time fields
cols<-c('Date','Time','GlobalActivePower','GlobalReactivePower','Voltage','GlobalIntensity',
        'SubMetering1','SubMetering2','SubMetering3')
colnames(power)<-cols
power$DateTime<-dmy(power$Date)+hms(power$Time)
power<-power[,c(10,3:9)]

# write a clean data set to the directory
  write.table(power,file='power_consumption.txt',sep='|',row.names=FALSE)
  #power<-read.table('power_consumption.txt',header=TRUE,sep='|')
  #power$DateTime<-as.POSIXlt(power$DateTime)
  

# remove the large raw data set 
if (file.exists('household_power_consumption.txt')) {
  x<-file.remove('household_power_consumption.txt')
}
  