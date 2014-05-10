data = read.table("household_power_consumption.txt",sep=";", header=TRUE)
datas = data[which(data$Date == "1/2/2007" | data$Date == "2/2/2007"), ]
gap = as.numeric(datas$Global_active_power)
png("plot1.png",480,480)
hist(gap, col = "red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)" )
dev.off()