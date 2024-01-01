setwd('~/Desktop/')
titanic = read.csv('TitanicPartial_v2.csv')
##Problem 1

mod1 = glm(Survival ~ 1 + as.factor(Pclass) + Age, 
           family = 'binomial', data = titanic)

summary(mod1)

mod2 = glm(Survival ~ 1 + Pclass + Age, 
           family = 'binomial', data = titanic)
summary(mod2)

##Problem 2

mod3 = glm(Survival ~ 1 + as.factor(Pclass) * Age, 
           family = 'binomial', data = titanic)
summary(mod3)

anova(mod1, mod3, test = 'Chisq')

pchisq(q = 0.02, df = 1, lower.tail = FALSE)

as.factor(titanic$Pclass)
as.factor(titanic$Survival)
print(titanic$Survival)

predict(mod3, newdata = data.frame(Age = 20, Sex = 'male', Pclass = 3), type = 'response')
predict(mod3, newdata = data.frame(Age = 20, Sex = 'male', as.factor(Pclass)=3), type = 'response') 
predict(mod3, newdata = data.frame(Age = 20, Pclass = 3, Sex = 'male'), type = 'response')
