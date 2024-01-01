prod=read.table('http://gattonweb.uky.edu/sheather/book/docs/datasets/production.txt', header = T) 
## create regression line 
mod = lm(RunTime ~ RunSize, data = prod) #RunTime is Y variable, RunSize is X variable
summary(mod)

## for illustration purposes: 
plot(RunTime ~ RunSize, data = prod)
abline(mod)
##sigma-hat gives you an idea for the variability as to how far the data points are
##from the regression line

##Calculating RSS
RSS <- (16.25)^2*18
RSS

##exercise 5: calculate a test stat for beta1 = 0.2
t <- (0.25924-0.2)/0.03714
t
##pt function is "probability for t value"
##use pt function to obtain a p-value for this test stat(use either of the 
##following two codes)
2 * pt( q = 1.595, df = 18 , lower.tail = FALSE)
2 *(1- pt( q = 1.595, df = 18 , lower.tail = TRUE))

##now, suppose our sample size is large enough to use the normal distribution
#use either of the following three codes
2 * pnorm(q = 1.595, mean = 0 , sd = 1, lower.tail = FALSE)
2 *(1- pnorm(q = 1.595, mean = 0, sd =1 , lower.tail = TRUE))
2 *(1- pnorm(q = 1.595))

