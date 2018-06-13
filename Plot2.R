data_File <- "./data/household_power_consumption.txt"
ecc_data <- read.table(data_File, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
sub_data_range <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

#str(subSetData)
date_time <- strptime(paste(sub_data_range$Date, sub_data_range$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
#global_Active_Power <- as.numeric(sub_data_range$Global_active_power)
png("plot2.png", width=480, height=480)
plot(date_time, as.numeric(sub_data_range$Global_active_power), type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()