setwd("~/Coursera/exploratory-data-analysis/Course Project 1")

data <- read.table("household_power_consumption.txt",sep=";",header=TRUE)
subsetdata <- subset(data, data$Date=="1/2/2007"| data$Date =="2/2/2007")

s <- paste(subsetdata$Date, subsetdata$Time,sep = " ")
x <- strptime(s, "%d/%m/%Y %H:%M:%S")
y <- as.numeric(subsetdata$Global_active_power)

png("plot2.png", width=480, height=480)

plot(x, 
     y,
     type="l", 
     xlab="", 
     ylab= "Global Active Power (kilowatts)")

dev.off()