df <- read.table("household_power_consumption.txt", header=TRUE, sep=";", na.strings="?")
df$Date <- as.Date(df$Date, format="%d/%m/%Y")
df <- df[df$Date=="2007-02-01" | df$Date=="2007-02-02",]
df$FullTime <- paste(df$Date, df$Time)
df$FullTime <- strptime(df$FullTime, format="%Y-%m-%d %H:%M:%S")
png("plot2.png", height=480, width=480)
plot(df$FullTime, df$Global_active_power, xlab="", ylab="Global Active Power (kilowatts)", type="n")
lines(df$FullTime, df$Global_active_power)
dev.off()