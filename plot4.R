par(mfrow=c(2,2))

#Plot 1
  p2<-f[f$Date=="1/2/2007"|f$Date=="2/2/2007",c(1,2,3)]
p2$dh<-strptime(paste(p2[,1], p2[,2]), '%d/%m/%Y %H:%M:%S')
plot(p2$dh, p2$Global_active_power, type="l",ylab = "Global Active Power", xlab="")

#Plot 2
pv<-f[f$Date=="1/2/2007"|f$Date=="2/2/2007",c(1,2,5)]
pv$dh<-strptime(paste(pv[,1], p3[,2]), '%d/%m/%Y %H:%M:%S')
plot(pv$dh, pv$Voltage, type="l", ylab = "Voltage", xlab = "datetime")

#Plot 3
p3<-f[f$Date=="1/2/2007"|f$Date=="2/2/2007",c(1,2,7,8,9)]
p3$dh<-strptime(paste(p3[,1], p3[,2]), '%d/%m/%Y %H:%M:%S')
plot(p3$dh, p3$Sub_metering_1, type="l", ylab = "Enegery sub metering", xlab = "")
lines(p3$dh, p3$Sub_metering_2, col="red")
lines(p3$dh, p3$Sub_metering_3, col="blue")
legend("topright", lwd=2, legend=c("sub_metering_1","sub_metering_2","sub_metering_3"), col=c("black","red","blue"), cex=0.5)

#Plot 4
p4<-f[f$Date=="1/2/2007"|f$Date=="2/2/2007",c(1,2,4)]
p4$dh<-strptime(paste(p4[,1], p2[,2]), '%d/%m/%Y %H:%M:%S')
plot(p4$dh, p4$Global_reactive_power, type="l",ylab = "Global_rective_power", xlab="datetime")
