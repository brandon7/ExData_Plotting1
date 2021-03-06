#plot4
png('plot4.png', width=480, height=480, units='px')
par(mfrow=c(2,2))
plot(df$Global_active_power~df$Date, type='l', xlab='', ylab='Global Active Power')
plot(df$Voltage~df$Date, type='l', xlab='datetime', ylab='Voltage')
plot(df$Sub_metering_1~df$Date, type='l', xlab='', ylab='Energy sub metering')
lines(df$Sub_metering_2~df$Date,col='red')
lines(df$Sub_metering_3~df$Date,col='blue')
legend('topright', bty='n', legend=grep('metering',colnames(df),value=TRUE), lty=c(1,1,1), col=c('black','red','blue'))
plot(df$Global_reactive_power~df$Date, type='l', xlab='datatime', ylab='Global_reactive_power')
dev.off()