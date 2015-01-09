setwd("C:/Users/steve/Desktop/Exploratory/proj1")
options(max.print=200)   #to eliminate runaways

raw <- read.csv("household_power_consumption.txt",colClasses= "character",header = TRUE,sep=";", nrows=70000)
pointer <- min(grep("^1/2/2007",raw$Date))
nr=pointer:(pointer+2879)
power<- raw[nr, ]
rm(raw)
gc()
oldnames <- names(power)
newnames= c("date", "time", "active", "reactive", "voltage", "intensity", "meter1", "meter2", "meter3"  )
names(power) <- newnames               #more convenient names
power$postime=strptime(paste(power$date, " ", power$time),"%d/%m/%Y %H:%M:%S")
power<- power[ ,c(10,3:9) ]
power$meter1 <- as.numeric(power$meter1)
power$meter2 <- as.numeric(power$meter2)
power$meter3 <- as.numeric(power$meter3)
power$active <- as.numeric(power$active)
power$reactive <- as.numeric(power$reactive)
power$voltage <- as.numeric(power$voltage)
power$intensity <- as.numeric(power$intensity)

write.csv(power,"power.csv", row.names= FALSE)
