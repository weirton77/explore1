setwd("https://github.com/weirton77/explore1/blob/master
#original data prepared with dataprep.R
power <- read.csv("power.csv", colClasses=c("character",rep("numeric",7)))
power$postime=strptime(paste(power$date, " ", power$time),"%d/%m/%Y %H:%M:%S")
#plot1
#png(filename="plot1.png")   #turned off for demo
hist(power$active, xlab ="Global Active Power (kilowatts)", main = "Global Active Power", col = "red", ylim=c(0,1200))
#dev.off()
