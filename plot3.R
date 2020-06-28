#Plot3

plot(datetime,subdate$Sub_metering_1,type="n",xlab="",ylab="Energy sub metering")
lines(datetime, subdate$Sub_metering_1)
lines(datetime, subdate$Sub_metering_2, col = "red")
lines(datetime, subdate$Sub_metering_3, col = "blue")
legend("topright", lty=1, col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
dev.copy(png, "plot3.png")
dev.off()