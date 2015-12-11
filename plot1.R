# Plot1

# Import And Adjust Variable Attributes
setwd("C:/Users/bkindle/Desktop/Data Science/4 - Exploratory Data Analysis/Project1")
x <- read.table("household_power_consumption.txt", skip=66637, nrow=2880, sep=';')
x$V1 <- as.Date(x$V1, format="%d/%m/%Y")
x$V2 <- strptime(x$V2, format="%H:%M:%S")

# Open PNG Device
png(filename = "plot1.png", width = 480, height = 480, units = "px", 
    pointsize = 12, bg = "white")

# Create Histogram
hist(x$V3, col='red', main='Global Active Power', xlab='Global Active Power (kilowatts)')

# Close PNG Device
dev.off()