Sys.setlocale("LC_TIME", "English")
data = read.table("household_power_consumption.txt",sep = ";", header = TRUE)
datas = data[which(data$Date == "1/2/2007" | data$Date == "2/2/2007"), ]
gap = as.numeric(datas$Global_active_power)
dates = as.Date(datas$Date, "%d/%m/%Y")
times = datas$Time
x = paste(dates, times)
t = strptime(x, "%Y-%m-%d %H:%M:%S")
png("plot2.png",480,480)
plot(t, gap, type="l", ylab = "Global Active Power (kilowatts)", xlab = "")
dev.off()