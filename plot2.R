#Plot2

datetime <- strptime(paste(subdate$Date, subdate$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
plot(datetime, subdate$Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.copy(png, file = "plot2.png")
dev.off()