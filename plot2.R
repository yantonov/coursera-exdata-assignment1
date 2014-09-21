source("get-data.R")

downloadData()
data <- prepareData(readData(sourceFileName()))

png("plot2.png", width=480, height=480)

plot(data$DateTime,
     data$Global_active_power,
     type="l",
     main="",
     xlab="",
     ylab="Global Active Power (kilowatts)")

dev.off()
