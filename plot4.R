source("get-data.R")

downloadData()
data <- prepareData(readData(sourceFileName()))

png("plot4.png")

par(mfrow=c(2,2))

plot(data$DateTime,
     data$Global_active_power,
     type="l",
     main="",
     xlab="",
     ylab="Global Active Power")

plot(data$DateTime,
     data$Voltage,
     type="l",
     main="",
     xlab="datetime",
     ylab="Voltage")

plot(data$DateTime,
     data$Sub_metering_1,
     type="l",
     main="",
     xlab="",
     ylab="Energy sub metering")

lines(data$DateTime,
      data$Sub_metering_2,
      type="l",
      col="red")

lines(data$DateTime,
      data$Sub_metering_3,
      type="l",
      col="blue")

legend("topright",
       col=c("black",
           "red",
           "blue"),
       lty=1,
       legend=c("Sub_metering_1",
           "Sub_metering_2",
           "Sub_metering_3"))

plot(data$DateTime,
     data$Global_reactive_power,
     type="l",
     xlab="datetime",
     ylab="Global Reactive Power")

dev.off()
