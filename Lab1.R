install.packages("readxl")
library(readxl)
setwd("C:/Users/gadods/Documents/R/Labs_DA")
my_data<- read_excel("EPIData.xls", sheet = "EPI2010_all countries")
EPI_data <- read.csv("C:\Users\gadods\Documents\R\Labs_DA"/CSVEPI.csv)
EPI_data2 <- read.csv(file.choose(), header = TRUE)
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

#another variable: land area
summary(EPI_data2$AGRICULTURE)
fivenum(EPI_data2$AGRICULTURE)
stem(EPI_data2$AGRICULTURE)
hist(EPI_data2$AGRICULTURE)
hist(EPI_data2$AGRICULTURE, seq(30., 95., 1.0), prob=TRUE)

lines(density(EPI_data2$AGRICULTURE,na.rm=TRUE,bw="SJ"))
rug(EPI_data2$AGRICULTURE)

#another variable: biodiversity
summary(EPI_data2$BIODIVERSITY)
fivenum(EPI_data2$BIODIVERSITY)
stem(EPI_data2$BIODIVERSITY)
hist(EPI_data2$BIODIVERSITY)
hist(EPI_data2$BIODIVERSITY, seq(30., 95., 1.0), prob=TRUE)

lines(density(EPI_data2$BIODIVERSITY,na.rm=TRUE,bw="SJ"))
rug(EPI_data2$BIODIVERSITY)



