f<-read.table("./data/powerc/powerc.txt", nrows=10, sep = ";")
p3<-f[f$Date=="1/2/2007"|f$Date=="2/2/2007",c(1,2,7,8,9)]

p3$dh<-strptime(paste(p3[,1], p3[,2]), '%d/%m/%Y %H:%M:%S')

png(file = "plot3.png", width = 480, height = 480)
plot(p3$dh, p3$Sub_metering_1, type="l", ylab = "Enegery sub metering", xlab = "")
lines(p3$dh, p3$Sub_metering_2, col="red")
lines(p3$dh, p3$Sub_metering_3, col="blue")
legend("topright", lwd=2, legend=c("sub_metering_1","sub_metering_2","sub_metering_3"), col=c("black","red","blue"))
dev.off()

 
