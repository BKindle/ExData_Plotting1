# Plot4

# Import And Adjust Variable Attributes
setwd("C:/Users/bkindle/Desktop/Data Science/4 - Exploratory Data Analysis/Project1")
x <- read.table("household_power_consumption.txt", skip=66637, nrow=2880, sep=';', 
		     colClasses=c(rep("character", 2), rep("numeric", 7)), na.strings="?")
x$V10 <- paste(x$V1, x$V2)
x$V10 <- strptime(x$V10, "%d/%m/%Y %H:%M:%S")

# Open PNG Device
png(filename = "plot4.png", width = 480, height = 480, units = "px", 
    pointsize = 12, bg = "white")

# Create Plot

par(mfcol = c(2,2))
# top left plot
plot(x$V10, x$V3, type='l', ylab='Global Active Power', xlab="")
# bottom left plot
plot(x$V10, x$V7, type='n', ylab='Energy sub metering', xlab="")
lines(x = x$V10, y = x$V7)
lines(x = x$V10, y = x$V8, col = "red")
lines(x = x$V10, y = x$V9, col = "blue")
legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
    	 lty = 1, col = c("black", "red", "blue"))
# top right plot
plot(x$V10, x$V5, type="l", xlab="datetime", ylab="Voltage")
# bottom right plot
plot(x$V10, x$V4, type="l", xlab="datetime", ylab="Global_reactive_power")

# Close PNG Device
dev.off()