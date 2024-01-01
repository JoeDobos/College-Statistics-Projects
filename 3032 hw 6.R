setwd('~/Desktop/')
data1 = read.csv('cps1985.csv')
#part a
mod_a = lm(wage ~ 1 + age + union, data = data1)
summary(mod_a)
#part b
mod_b = lm(wage ~ 1 + age + union + age:union, data = data1)
summary(mod_b)
#part c
anova(mod_b, mod_a)
##Problem 2
#part a
mod_c = lm(wage ~ 1 + exper, data = data1)
summary(mod_c)
#part b
mod_d = lm(wage ~ 1 + exper + sector, data = data1)
summary(mod_d)
#part c
anova(mod_d, mod_c)
