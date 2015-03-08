setwd('G:/Data Science Specialization/04_Exploratory_Data_Analysis/Week_1')

#Load the data
data <- read.table(file="household_power_consumption.txt", header=TRUE, sep=";", na.strings="?")

#Fix the dates
data$Date <- as.Date(data$Date, format="%d/%m/%Y")

#Subset the data
df <- data[data$Date=="2007-02-01" | data$Date=="2007-02-02",]

#Join date and time
df$Date <- as.POSIXct(paste(df$Date,df$Time))

#create all plots
source('plot1.r',echo=TRUE)
source('plot2.r',echo=TRUE)
source('plot3.r',echo=TRUE)
source('plot4.r',echo=TRUE)
