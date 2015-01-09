setwd("https://github.com/weirton77/explore1/blob/master")
#original data prepared with dataprep.R
power <- read.csv("power.csv", colClasses=c("character",rep("numeric",7)))
power$postime=strptime(paste(power$date, " ", power$time),"%d/%m/%Y %H:%M:%S")
#plot2
#png(filename="plot2.png") #turned off for demo
plot(power$postime,power$active, main = "",ylab ="Global Active Power (kilowatts)",xlab= "",type = "l")
#dev.off()

