setwd('~/Desktop/')
data1 = read.csv('Rateprof.csv')
moda = lm(quality ~ 1 + easiness, data = data1)
modb = lm(quality ~ 1 + easiness + pepper + easiness:pepper, data = data1)
anova(moda, modb) ##correct answer
##my experimentation to see if order matters in the anova() function
anova(modb, moda)

##find RSS values in summary output, compute test stat manually
summary(moda)
rssA <- (0.6919^2)*364
dfA <- 364
summary(modb)
rssB <- (0.6599^2)*362
dfB <- 362
test_stat = ((rssA-rssB)/(dfA-dfB))/(rssB/dfB)
test_stat
#p-value for the test statistic
pf(test_stat, df1= 2, df2 = 362, lower.tail = F)

summary(modb)
plot(quality ~ easiness, data = data1)
abline(a = 1.71878, b = 0.56741, col = 'blue') #when pepperyes = 0
abline(a = 1.71878+1.83813, b = 0.56741-0.33572, col = 'red') #when pepperyes = 1

modc = lm(quality ~ 1 + easiness + discipline + easiness:discipline, data = data1)
summary(modc)
