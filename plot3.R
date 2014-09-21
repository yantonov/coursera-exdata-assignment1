source("get-data.R")

downloadData()
data <- prepareData(readData(sourceFileName()))

png("plot3.png", width=480, height=480)

plot(data$DateTime,
     data$Sub_metering_1,
     type="l",
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
       legend=c(
           "Sub_metering_1",
           "Sub_metering_2",
           "Sub_metering_3"))

dev.off()
