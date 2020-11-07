setwd("~/Coursera/exploratory-data-analysis/Course Project 1")

data <- read.table("household_power_consumption.txt",sep=";",header=TRUE)
subsetdata <- subset(data, data$Date=="1/2/2007"| data$Date =="2/2/2007")

x<-as.numeric(subsetdata$Global_active_power)

png("plot1.png", width=480, height=480)

hist(x, 
    col="red", 
    main="Global Active Power", 
    xlab="Global Active Power (kilowatts)")


dev.off()