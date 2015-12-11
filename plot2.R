# Plot2

# Import And Adjust Variable Attributes
setwd("C:/Users/bkindle/Desktop/Data Science/4 - Exploratory Data Analysis/Project1")
x <- read.table("household_power_consumption.txt", skip=66637, nrow=2880, sep=';', 
		     colClasses=c(rep("character", 2), rep("numeric", 7)), na.strings="?")
x$V10 <- paste(x$V1, x$V2)
x$V10 <- strptime(x$V10, "%d/%m/%Y %H:%M:%S")

# Open PNG Device
png(filename = "plot2.png", width = 480, height = 480, units = "px", 
    pointsize = 12, bg = "white")

# Create Plot
plot(x$V10, x$V3, type='l', ylab='Global Active Power (kilowatts)', xlab="")

# Close PNG Device
dev.off()
