library(dplyr)
library(ggplot2)
library(GGally)
library(psych)
library(multcomp)
library(ggfortify)
library(Hmisc)

setwd("C:\\Users\\Egir\\Documents\\GitHub\\Econometrics\\r")
data = read.csv("data.csv", header = TRUE)

model <- lm(data=data, y~x)
m <- glht(model, linfct = mcp(y = x))
coef(model)
confint(model, level=0.95)
confint(model, level=0.8)

