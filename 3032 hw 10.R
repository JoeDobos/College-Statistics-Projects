set.seed(2021)
st1 = arima.sim(n = 50, list(ar = c(0.7)), sd = 0.0625) - 2
plot.ts(st1)
st2 = arima.sim(n = 1000, list(ar = c(0.7)), sd = 0.0625) - 2
plot.ts(st2)

mean(st1)
var(st1)

mean(st2)
var(st2)

acf(st1, plot = F)
acf(st2, plot = F)

