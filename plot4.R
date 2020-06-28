#Plot4

par(mfrow=c(2,2))
plot(datetime, subdate$Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)")
plot(datetime, subdate$Voltage, type="l", xlab="", ylab="Voltage")
plot(datetime,subdate$Sub_metering_1,type="n",xlab="",ylab="Energy sub metering")
lines(datetime, subdate$Sub_metering_1)
lines(datetime, subdate$Sub_metering_2, col = "red")
lines(datetime, subdate$Sub_metering_3, col = "blue")
legend("topright", lty=1, col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
plot(datetime, subdate$Global_reactive_power, type="l", xlab="", ylab="Global_reactive_power")
dev.copy(png, "plot4.png")
dev.off()
