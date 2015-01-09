setwd("C:/Users/steve/Desktop/Exploratory/proj1")
#original data prepared with dataprep.R
power <- read.csv("power.csv", colClasses=c("character",rep("numeric",7)))
power$postime <- strptime(power$postime,"%Y-%m-%d %H:%M:%S")
#png(filename="plot4.png")
#plot4
par(mfrow = c(2, 2))  #plot4
plot(power$postime,power$active, main = "",ylab ="Global Active Power (kilowatts)",xlab= "",type = "l")
plot(power$postime,power$voltage, main = "",ylab ="Voltage",xlab= "datetime",type = "l")
plot(power$postime,power$meter1, main = "",ylab ="Energy sub metering",xlab= "",type = "l")
legend("topright",c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),lty = 1, lwd=2, col=c("black","red","blue")) 
lines(power$postime,power$meter2, col= "red")  #
lines(power$postime,power$meter3, col = "blue")  # looks fine.  add colorto plot and legend
plot(power$postime,power$reactive, main = "",ylab ="Global_rective_power",xlab= "datetime",type = "l")
par(mfrow = c(1,1))  #otherwise the next plot will be skinnier than expected
#dev.off()
