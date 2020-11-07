setwd("~/Coursera/exploratory-data-analysis/Course Project 1")

data <- read.table("household_power_consumption.txt",sep=";",header=TRUE)
subsetdata <- subset(data, data$Date=="1/2/2007"| data$Date =="2/2/2007")

s <- paste(subsetdata$Date, subsetdata$Time,sep = " ")
x <- strptime(s, "%d/%m/%Y %H:%M:%S")
y1 <- as.numeric(subsetdata$Sub_metering_1)
y2 <- as.numeric(subsetdata$Sub_metering_2)
y3 <- as.numeric(subsetdata$Sub_metering_3)

png("plot3.png", width=480, height=480)

plot(x, 
     y1, 
     type="l", 
     ylab="Energy Submetering", 
     xlab="")

lines(x, y2, type="l", col="red")
lines(x, y3, type="l", col="blue")

legend("topright", 
       c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
       lty=1, 
       lwd=2.5, 
       col=c("black", "red", "blue"))
dev.off()