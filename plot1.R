# Plot1

setwd("C:/Users/Dina/Desktop/R")
read <- read.csv("household_power_consumption.txt", skip = 1, sep = ";", na.strings = "?")
names(read) <- c("Date", "Time", "Global_active_power", "Global_reactive_power", "Voltage", "Global_intensity", "Sub_metering_1", "Sub_metering_2", "Sub_metering_3")
subdate <- subset(read, Date %in% c("1/2/2007","2/2/2007"))
as.Date(subdate$Date, format = "%d/%m/%y")
plot1 <- hist(subdate$Global_active_power, col = "Red", main = "Global Active Power", xlab="Global Active Power (kilowatts)", ylab="Frequency")
dev.copy(png, file = "plot1.png")
dev.off()