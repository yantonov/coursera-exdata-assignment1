downloadData <- function() {

    dataFileName <- "household_power_consumption.zip"
    dataUrl <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"

    if (!file.exists(dataFileName)) {
        download.file(dataUrl,
                      method='wget',
                      destfile=dataFileName)
        unzip(dataFileName)
    }
}

readData <- function(fileName) {
    data <- read.csv(fileName,
                     sep=";",
                     na.strings="?",
                     colClasses=c(
                         rep('character', 2), 
                         rep('numeric', 7))
                     )   
}

prepareData <- function(data) {

    data$Date <- as.Date(data$Date,
                         format="%d/%m/%Y")

    data$DateTime <- strptime(paste(data$Date,data$Time),
                              format="%Y-%m-%d %H:%M:%S")

    data <- data[  data$Date=="2007-02-01"
                 | data$Date=="2007-02-02",]
}

sourceFileName <- function() {
    "household_power_consumption.txt"
}
