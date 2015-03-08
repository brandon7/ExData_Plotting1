#plot3
png('plot3.png', width=480, height=480, units='px')
plot(df$Sub_metering_1~df$Date, type='l', xlab='', ylab='Energy sub metering')
lines(df$Sub_metering_2~df$Date,col='red')
lines(df$Sub_metering_3~df$Date,col='blue')
legend('topright', legend=grep('metering',colnames(df),value=TRUE), lty=c(1,1,1), col=c('black','red','blue'))
dev.off()