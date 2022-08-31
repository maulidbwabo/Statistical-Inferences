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
