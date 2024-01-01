#Exercise 1
setwd('~/Desktop/')
data = read.csv("KangarooNose.csv")
mod = lm(width ~ length, data = data)

#run anova
#anova(mod)

##Exercise 2 answers in lab doc
##Exercise 3 
ssreg = 31227.9
rss = 8968.1
r2 = ssreg/(ssreg+rss)
r2

predict(mod)
fitted(mod)

predict(mod, newdata = data.frame(length = 750))
predict(mod, newdata = data.frame(length = c(750,700)))
predict(mod, newdata = data.frame(length = 750), interval = 'confidence')
#defaults to a 95% confidence interval
predict(mod, newdata = data.frame(length=750), interval = 'prediction')
##the prediction interval is much wider than the confidence interval
predict(mod, newdata = data.frame(length = 750), interval = 'confidence', level = 0.96)
