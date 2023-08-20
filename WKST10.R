# WKST 10 

# 1
x <- seq(-4,4,length = 200)
y <- dnorm(x, mean = 0, sd = 1) # prints the normal distribution vector 
# with mean 0 sd 1 corresponding to 200 data points 
z <- plot(x,y, type = "l", lwd = 2, col = "blue") # plots the corresponding normal 
# distribution with the given x axis and normalized values with type and line width 2 

# 2 
# mean = 68, sd = 9 
# mean + sd = 68 + 9 = 77
# percentage of scores greater than 77
# mean  + sd = 100 - (50 + 34.1) 
# 100 - 84.1 = 15.9 % 
# probability is 0.159
# use pnorm function P[x > 77]
pnorm(77,mean = 68, sd = 9, lower.tail = FALSE)
# for less, 
pnorm(77, mean = 68, sd = 9, lower.tail = TRUE)
# OR CORRECT TO USE:
1 - pnorm(77, 68, 9)

# 3 
# a) probability that a alue of x chosen at random will be between 65 and 95?
# approx mean - sd * 1.25 to mean + sd * 1.25 - (19.1 + 15) + 5) * 2 = 78% 
# P[65 < x < 95] = P[x<95] - P[x < 65]
pnorm(95, mean = 80, sd = 12, lower.tail = TRUE)
pnorm(95, 80, 12) - pnorm(65, 80, 12) # correct 

# b) mean - sd/2 = 80 - 12/2 = 74... percentage = 19.1 for 
# mean - sd * 0.5 to mean (from bell curve) 
# probability = (50 - 19.1) / 100 = 0.309
# P[x < 74]
pnorm(74, mean = 80, sd = 12, lower.tail = TRUE)

# 4 
# 95th percentile = top %5  = top 30 people
qnorm(0.95) # to be in the 95th percentile, the z score has to be greater than 1/645
76 + pnorm(0.95) * 8
qnorm(0.95, mean = 76, sd = 8) 
# to be in the 95th percentile, a student needs to have a score of 89.159 

qnorm(0.95, 76, 8) # needs a score of 89.15883

# 5 # a 
# what percentage of population are in the interval # find the probability 
# range is the mean - sd to mean + sd 
# 34.1 * 2 = 68.2
# P[84<x<116] = P[x<116] - P[x<84]
(pnorm(116, mean = 100, sd = 16, lower.tail = TRUE) -
    pnorm(84, mean = 100, sd = 16, lower.tail = TRUE)) * 100

# 5 b 
# top 98 percentile 
# from the s scores table, score = 2.06 
mean <- 100
std_dev <- 16
z_score <- qnorm(0.98) 
z_score

# z = (x-mean)/ sd
# 2.06 = (x - 100) / 16
# x = 100 + 2.06 * 16
# x = 132.96
x <- mean + (z_score * std_dev)
x
# or directly
qnorm(0.98, mean = mean, sd = std_dev)
