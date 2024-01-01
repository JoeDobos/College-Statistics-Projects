setwd('~/Desktop/')
diamonds = read.csv("Exam1_diamonds_v2.csv")
plot(price ~ weight, data = diamonds, main = 'Weight vs Price')
mod1 = lm(price ~ weight, data = diamonds)
abline(mod1)
summary(mod1)

qt(p=0.97, df = 176)
predict(mod1, newdata = data.frame(weight = 1), interval = 'prediction', level = 0.94)
ehat = resid(mod1)
RSS = sum(ehat^2)
RSS

2 * pt(q=-25.71518463, 200, lower.tail=FALSE)
