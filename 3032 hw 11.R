setwd('~/Desktop/')
data = read.csv('GoogleStockVolume2020.csv')
nrow(data)
gt = data$Volume
goog = arima(gt, order = c(1, 0, 0))
plot.ts(gt, main = 'Google Stock Volume')

acf(gt, main = 'ACF')
pacf(gt, main = 'PACF')

goog
acf(goog$residuals)

predict(goog, n.ahead = 1)

data2 = read.csv('HW11_Problem2_Data_S2021.csv')
nrow(data2)
yt = data2$value
prob_2 = arima(yt, order = c(1, 0 , 0))
plot.ts(yt, main = 'Time Series for Problem 2')
prob_2
predict(prob_2, n.ahead = 2)

plot.ts(prob_2$residuals, main = 'Residuals time series plot', ylab= 'residuals')
acf(prob_2$residuals)
