##working directory
getwd()
##Simulation
set.seed(1234)
#Set lambda 
lambda = 0.2
n = 40
sim = 1000
#Simulating 40 exponentially 
simExp = replicate(sim, rexp(n, lambda))
#Mean
meanExp = apply(simExp, 2, mean)
#Calculating mean versus theoretical mean
sampMean = mean(meanExp)
sampMean
theoMean = 1/lambda
theoMean
#Simulated exponential sample mean
hist(meanExp, main = "Simulated Exponential Sample Means", col = "aliceblue", breaks = 100)
abline(v = sampMean, col = "red")
abline(v = theoMean, col = "blue")
#sample variance versus theoretical variance 
sampSd = sd(meanExp)
sampVar = sampSd^2
sampVar
#
theoSd = (1/lambda)/sqrt(n)
theoVar = theoSd^2
theoVar
##Distribution
hist(meanExp, main = "Normal Distribution", col = "aliceblue", breaks = 100)
xfit = seq(min(meanExp), max(meanExp), length = 100)
yfit = dnorm(xfit, mean = 1/lambda, sd = (1/lambda)/sqrt(n))
lines(xfit, yfit*60, lty = 5)
