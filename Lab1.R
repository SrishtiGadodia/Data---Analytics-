install.packages("readxl")
library(readxl)
setwd("C:/Users/gadods/Documents/R/Labs_DA")

#my_data<- read_excel("EPIData.xls", sheet = "EPI2010_all countries")
#EPI_data <- read.csv("C:\Users\gadods\Documents\R\Labs_DA"/CSVEPI.csv)

#EPI_data2 <- read.csv(file.choose(), header = TRUE)

EPI_data2 <- read.csv("C:/Users/gadods/Documents/R/Labs_DA/EPI2010.csv")
EPI_data2
View(EPI_data2)

names(EPI_data2) <- as.matrix(EPI_data2[1, ])
EPI_data2 <- EPI_data2[-1, ]
EPI_data2[] <- lapply(EPI_data2, function(x)
type.convert(as.character(x)))
EPI_data2
View(EPI_data2)

summary(EPI_data2$EPI)
fivenum(EPI_data2$EPI)
stem(EPI_data2$EPI)
hist(EPI_data2$EPI)
hist(EPI_data2$EPI, seq(30., 95., 1.0), prob=TRUE)

lines(density(EPI_data2$EPI,na.rm=TRUE,bw="SJ"))
rug(EPI_data2$EPI)
plot(ecdf(EPI_data2$EPI), do.points=FALSE, verticals=TRUE) 
par(pty="s") 
qqnorm(EPI_data2$EPI); qqline(EPI_data2$EPI)

x<-seq(30,95,1)
qqplot(qt(ppoints(250), df = 5), x, xlab = "Q-Q plot for t dsn")
qqline(x)

boxplot(EPI_data2$EPI, EPI_data2$DALY)
qqplot(EPI_data2$EPI, EPI_data2$DALY)


EPILand<-EPI_data2$EPI[!EPI_data2$Landlock]
Eland <- EPILand[!is.na(EPILand)]
hist(Eland)
hist(Eland, seq(30., 95., 1.0), prob=TRUE)


#another variable: land area
summary(EPI_data2$DALY)
fivenum(EPI_data2$DALY)
stem(EPI_data2$DALY)
hist(EPI_data2$DALY)
hist(EPI_data2$DALY, seq(30., 95., 1.0), prob=TRUE)

lines(density(EPI_data2$DALY,na.rm=TRUE,bw="SJ"))
rug(EPI_data2$DALY)

#another variable: biodiversity
summary(EPI_data2$CLIMATE)
fivenum(EPI_data2$CLIMATE)
stem(EPI_data2$CLIMATE)
hist(EPI_data2$CLIMATE)
hist(EPI_data2$CLIMATE, seq(30., 95., 1.0), prob=TRUE)

lines(density(EPI_data2$CLIMATE,na.rm=TRUE,bw="SJ"))
rug(EPI_data2$CLIMATE)



