#plot2
png('plot2.png', width=480, height=480, units='px')
plot(df$Global_active_power~df$Date, type="l", xlab='', ylab="Global Active Power (kilowatts)")
dev.off()