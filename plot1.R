f<-read.table("./data/powerc/powerc.txt", nrows=10, sep = ";")
p1<-f[f$Date=="1/2/2007"|f$Date=="2/2/2007",c(1,3)]
p1[,2]<-as.numeric(p1[,2])

png(file = "plot1.png", width = 480, height = 480)
hist(p1[,2], main="Global Active Power", col="red", xlab="Global Active Power (kilowatts)")
dev.off()
