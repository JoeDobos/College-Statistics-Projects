setwd('~/Desktop/')
pollution = read.csv('polutionPartial.csv')
results_a = regsubsets(y ~ 1 + x1 + x2 + x3+ x4 + x5, 
                       data = pollution)
summary(results_a)

m0 = lm(y ~ 1 + x1, data = pollution)
extractAIC(m0, k = log(60))

m1 = lm(y ~ 1 + x1 + x5, data = pollution)
extractAIC(m1, k = log(60))

m2 = lm(y ~ 1 + x1 + x2 + x4, data = pollution)
extractAIC(m2, k = log(60))

m3 = lm(y ~ 1 + x1 + x2 + x3 + x4, data = pollution)
extractAIC(m3, k = log(60))

m4 = lm(y ~ 1 + x1 + x2 + x3 + x4 + x5, data = pollution)
extractAIC(m4, k = log(60))

m5 = lm(y ~ 1, data = pollution)
step(m4, data = pollution, direction = 'backward', scope = list(lower = m5, upper = m4), k = log(60))

m6 = lm(y ~ 1 + x4, data = pollution)
m7 = lm( y ~ 1 + x1 + x2 + x3 + x4 + x5, data = pollution)
step(m7, scope = list(lower = m6, upper = m7), direction = 'backward', k = 2)

step(m6, scope = list(lower = m6, upper = m7), direction = 'forward', k = 2)
