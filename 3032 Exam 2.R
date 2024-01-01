setwd('~/Desktop/')
data1 = read.csv('FakeSalt.csv')
pairs(Liking ~ 1 + Salt + Sense + Age + BMI, data = data1)

m_complicated = lm(Liking ~ 1 + Salt + Motive + Sense + Age + BMI, data = data1)
m_simple = lm(Liking ~ 1, data=data1)
step(m_complicated, 
     scope = list(lower = m_simple, upper = m_complicated), direction = 'backward', k = log(109))
