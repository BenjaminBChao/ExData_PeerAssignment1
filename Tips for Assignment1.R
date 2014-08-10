# 1. Here is alternative approach to select only 2-day data

# load library
library(sqldf)
# make a path and file string
DatPath <-"./household_power_consumption.txt"
# read file and select rows based on string "1/1/2007" and store in dataframe DF
MyDat <- read.csv.sql(DatPath, sep=";",sql = "select * from file where Date = '1/2/2007' OR Date = '2/2/2007'")

# 2. Take a look at what else your hist() returns!

HistInfo <- hist(NewDat$Global_active_power, breaks = 15, col="red",xlab = "Global Active Power (killowatts)",main = "Global Active Power") 


# 3. There's a difference between the character string "NA" and the R data representation for missing values, NA. Remove the quotes around NA in your example to see:
    
a <- c("10","28","3",NA)

# when you're using min with actual missing values (i.e. not the character strings "NA") you'll want to use na.rm = TRUE:
    
which(as.numeric(a) == min(as.numeric(a),na.rm = TRUE)) ## na.strings works on char vector

