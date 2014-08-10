source("Load.Data.R") #load the source code from Load.Data.R
png(filename = "plot4.png", 
    width = 480, height = 480,
    units = "px", bg = "transparent")
par(mfrow = c(2, 2))

# 1: Top-left Graph
plot(newDat$Date, newDat$Global_active_power, 
     type = "l",
     xlab = "", ylab = "Global Active Power")

# 2: Top-right Graph
plot(newDat$Date, newDat$Voltage,
     type = "l",
     xlab = "datetime", ylab = "Voltage")

# 3: Bottom-left Graph
plot(newDat$Date, newDat$Sub_metering_1, 
     type = "l",
     col = "black",
     xlab = "", ylab = "Energy sub metering")
lines(newDat$Date, newDat$Sub_metering_2, col = "red")
lines(newDat$Date, newDat$Sub_metering_3, col = "blue")
# Remove the border of legend here.
legend("topright", 
       bty = "n",
       col = c("black", "red", "blue"),
       c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       lwd = 1)

# 4: Bottom-right Graph
plot(newDat$Date, newDat$Global_reactive_power, 
     type = "l",
     col = "black",
     xlab = "datetime", ylab = colnames(newDat)[3])
dev.off()