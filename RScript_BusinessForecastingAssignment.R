nav = read.csv("nav.csv", header = T)
head(nav)
nav[1:12,2]
navTS <- ts(nav[1:12,2], frequency = 3)
navTSFit1 <- stl(navTS, s.window = "period")
plot(navTSFit1)
navTS1Fit2<- HoltWinters(navTS, beta=FALSE, gamma=FALSE) 
navTS1Fit2
navTS1Fit1Forecast1<- forecast.HoltWinters(navTS1Fit2)
plot(navTS1Fit1Forecast1)
navTS1Fit2
accuracy(navTS,navTS1Fit2)
accuracy(navTS1Fit1Forecast1)
nav[1:12,1]
accuracy(c(1,2,3), c(7,8,9))


#Forecasts for July 2010 to December 2010 is: 
x <- nav[7:12,1]
y <- nav[7:12,3]
x_name <- "Month"
y_name <- "Forecasts For Naive"
require(reshape2)
df <- melt(data.frame(x,y))
colnames(df) <- c(x_name, y_name)
print(df)
accuracy(nav[7:12,2],y)


#Forecasts for July 2010 to December 2010 Using Moving Average (3) are: 
x <- nav[7:12,1]
y <- nav[7:12,4]
nav[7:12,4]
x_name <- "Month"
y_name <- "Forecasts For MA(3)"
require(reshape2)
df <- melt(data.frame(x,y))
colnames(df) <- c(x_name, y_name)
print(df)
accuracy(nav[7:12,2],y)


#Forecast for January 2011 Using Naive is: 
x <- nav[13,1]
y <- nav[13,3]
nav[7:12,4]
x_name <- "Month"
y_name <- "Forecasts For MA(3)"
require(reshape2)
df <- melt(data.frame(x,y))
colnames(df) <- c(x_name, y_name)
print(df)


#Forecast for January 2011 Using Moving Average (3) is: 
x <- nav[13,1]
y <- nav[13,4]
nav[7:12,4]
x_name <- "Month"
y_name <- "Forecasts For MA(3)"
require(reshape2)
df <- melt(data.frame(x,y))
colnames(df) <- c(x_name, y_name)
print(df)

