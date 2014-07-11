df <- read.table("household_power_consumption.txt", header=TRUE, sep=";", na.strings="?")
df$Date <- as.Date(df$Date, format="%d/%m/%Y")
df <- df[df$Date=="2007-02-01" | df$Date=="2007-02-02",]
png("plot1.png", height=480, width=480)
hist(df$Global_active_power, main="Global Active Power", col="red", xlab="Global Active Power (kilowatts)")
dev.off()