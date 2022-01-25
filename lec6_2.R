# lec6_2.r
# Data exploration : Numerical summary statistics

# set working directory
setwd("/Users/hyejungko/Desktop/week6_2_2021")

### student math grade data ####

stud<-read.csv("stud_math.csv")
head(stud)
dim(stud)
str(stud)

# descriptive statistics :
summary(stud)

# character variable to factor
stud<-read.csv("stud_math.csv", stringsAsFactors = TRUE)
str(stud)

attach(stud)

# descriptive statistics : compare with the above
summary(stud)

# Numerical analytics
mean(G3)
sd(G3)
sqrt(var(G3))

# creating interested variable list
vars<-c("G1", "G2", "G3")
head(stud[vars])
summary(stud[vars])

# sapply function
sapply(stud[vars], mean)

# descriptive statistics using "psych" package
# install.packages("psych")
# library(psych)
# require "psych" for "describe" function
# describe(stud[vars])

# categorical data
table(health)

health_freq<-table(health)
names(health_freq) <- c ("very bad", "bad", "average", "good",
                      "very good")
barplot(health_freq, col=3)

# 2*2 contingency table
table(health,studytime)

##################

chisq.test(health,studytime)

