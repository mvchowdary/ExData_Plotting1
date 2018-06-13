if (!file.exists("data"))
{
    dir.create("data")
}

data_File<-"./data/household_power_consumption.txt"
ecc_data<-read.table(data_File,header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
#nrow(ecc_data)
sub_data_range<-ecc_data[ecc_data$Date %in% c("1/2/2007","2/2/2007"),]
#nrow(sub_data_range)
png("plot1.png", width=480, height=480)
#names(sub_data_range)
global_power<-as.numeric(sub_data_range$Global_active_power)
hist(global_power,col="red",main="Global Active Power",
     xlab = "Global Active Power(KW)")
dev.off()
