#such that you can use the pipe operator you have to use this library

library(magrittr)
setwd("C:/Users/gadods/Documents/R/Labs_DA")
multivariate <-read.csv("C:/Users/gadods/Documents/R/Labs_DA/multivariate.csv")
head(multivariate)
attach(multivariate)

mm <-lm(Homeowners~Immigrant)
mm
summary(mm)

plot(Homeowners~Immigrant)

help(abline)
abline(mm)
abline(mm,col=2,lwd=3)
newImmigrantdata <- data.frame(Immigrant = c(0, 20))
mm %>% predict(newImmigrantdata)

#above code works - including the pipe operator

abline(mm)
abline(mm,col=3,lwd=3) # line color = green, line width = 3
attributes(mm)
mm$coefficients
