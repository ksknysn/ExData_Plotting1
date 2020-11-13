f<-read.table("./data/powerc/powerc.txt", nrows=10, sep = ";")
p2<-f[f$Date=="1/2/2007"|f$Date=="2/2/2007",c(1,2,3)]

p2$dh<-strptime(paste(p2[,1], p2[,2]), '%d/%m/%Y %H:%M:%S')

png(file = "plot2.png", width = 480, height = 480)
plot(p2$dh, p2$Global_active_power, type="l",ylab = "Global Active Power (kilowatts)", xlab="")
dev.off()
