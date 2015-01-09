setwd("C:/Users/steve/Desktop/Exploratory/proj1")
#original data prepared with dataprep.R
power <- read.csv("power.csv", colClasses=c("character",rep("numeric",7)))
power$postime <- strptime(power$postime,"%Y-%m-%d %H:%M:%S")
png(filename="tryme.png")
plot(power$postime,power$active, main = "",ylab ="Global Active Power (kilowatts)",xlab= "",type = "l")
dev.off()