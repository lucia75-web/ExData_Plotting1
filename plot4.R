setwd("~/Coursera/exploratory-data-analysis/Course Project 1")

data <- read.table("household_power_consumption.txt",sep=";",header=TRUE)
subsetdata <- subset(data, data$Date=="1/2/2007"| data$Date =="2/2/2007")

s <- paste(subsetdata$Date, subsetdata$Time,sep = " ")
x <- strptime(s, "%d/%m/%Y %H:%M:%S")
y1 <- as.numeric(subsetdata$Sub_metering_1)
y2 <- as.numeric(subsetdata$Sub_metering_2)
y3 <- as.numeric(subsetdata$Sub_metering_3)

y4 <- as.numeric(subsetdata$Voltage)
Y5 <- as.numeric(subsetdata$Global_reactive_power)

png("plot4.png", width=480, height=480)

par(mfrow = c(2, 2)) 

plot(x, 
     y, 
     type="l", 
     xlab="", 
     ylab="Global Active Power", 
     cex=0.2)

plot(x, 
     y4, 
     type="l", 
     xlab="datetime", 
     ylab="Voltage")

plot(x, 
     y1, 
     type="l", 
     ylab="Energy Submetering", 
     xlab="")

lines(x, y2, type="l", col="red")
lines(x, y3, type="l", col="blue")

legend("topright", 
       c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
       lwd=2.5, 
       col=c("black", "red", "blue"),
       bty="n")

plot(x, 
     Y5, 
     type="l", 
     xlab="datetime", 
     ylab="Global_reactive_power")

dev.off()
