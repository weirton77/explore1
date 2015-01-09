"C:/Users/steve/Desktop/Exploratory/proj1"
#original data prepared with dataprep.R
power <- read.csv("power.csv", colClasses=c("character",rep("numeric",7)))
power$postime=strptime(paste(power$date, " ", power$time),"%d/%m/%Y %H:%M:%S")
par(mfrow = 1)
#plot1
#png(filename="plot1.png")
hist(power$active, xlab ="Global Active Power (kilowatts)", main = "Global Active Power", col = "red", ylim=c(0,1200))
#dev.off()
