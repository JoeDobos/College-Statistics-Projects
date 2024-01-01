setwd('~/Desktop/')
exp(0.6)/(1+exp(0.6))
6.4-5.5
exp(-3.827753 +0.971876) - 1
(0.58*(46-50.04))+(0.02*(49-50.04))+50.04

(0.59*(-0.57))+(0.5*(-1.15))+(0.18*(-0.38))+50.04

##7a 
sentimentdat = read.csv('SentimentSurvey.csv')
table(sentimentdat$Sentiment)

##7b

moda = glm(Sentiment ~ 1 + Age, family = 'binomial', data = sentimentdat)
summary(moda)

modb = glm(Sentiment ~ 1 + Income + Party, family = 'binomial', data = sentimentdat)
summary(modb)

##John's Probability
predict(modb, newdata = data.frame(Age = 45, Party = 'DFL', Income = 80,000), type = 'response')
##Amy's Probability
predict(modb, newdata = data.frame(Age = 29, Party = 'Republican', Income = 55,000), type = 'response')
##Lee's Probability 
predict(modb, newdata = data.frame(Age = 37, Party = 'Others', Income = 125,000), type = 'response')
##Jame's Probability
predict(modb, newdata = data.frame(Age = 21, Party = 'None', Income = 8,000), type =  'response')

modc = glm(Sentiment ~ 1 + Income + Party + Income * Party, family = 'binomial', data = sentimentdat)
summary(modc)
