
#This is the file to be used for plotting!
df <- "./household_power_consumption.txt"
dat <- read.table(df, header = T,
                  sep = ";",
                  colClasses = c("character", "character", rep("numeric",7)),
                  na.strings = "?")

# Subset the 2-day data for our analysis
subset <- dat$Date == "1/2/2007" | dat$Date == "2/2/2007"
newDat <- dat[subset, ]

# Combie Date and Time columns by using strptime()
newDat$Date <- strptime(paste(newDat$Date,newDat$Time), "%d/%m/%Y %H:%M:%S")
newDat$Time <- NULL #Remove Time column
rownames(newDat) <- 1:nrow(newDat) #Rename the rows
