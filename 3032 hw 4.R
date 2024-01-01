setwd('~/Desktop/')
data = read.csv('ItalianRestaurants.csv')
mod = lm(Price ~ Food, data = data)
summary(mod)

plot(Price ~ Food, data = data , main = 'Food vs Price')
abline(mod)

predict(mod, newdata=data.frame(Food=19), interval= 'confidence', level = 0.96)

mean(data$Food)
qt(p=0.98 , df = 166)

data2 = read.csv('Rateprof.csv')
mod2 = lm(quality ~ clarity , data = data2)
plot(quality ~ clarity, data = data2, main = 'Clarity vs Quality')
abline(mod2)
##skip above
summary(mod2)

cooks.distance(mod2)
max(cooks.distance(mod2))

plot(rstandard(mod2), main = 'Residual plot for Problem 2')

data2new = data2[-c(76),]
mod3 = lm(quality ~ clarity, data = data2new)
plot(mod3, main = 'Clarity vs Quality without Outlier')
plot(quality ~ clarity, data = data2new, main = 'Scatterplot w/o Outlier')
abline(mod3)
summary(mod3)
plot(rstandard(mod3), main = 'Residual plot without outlier')
