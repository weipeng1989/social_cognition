# ANCOVA
library(tidyverse)
library(car)
library(afex)


# loading the data

df = read.csv(file.choose(), header = TRUE, sep = ',', stringsAsFactors = FALSE)

attach(df)

# perform ANOVA using afex

aov.out = aov_ez(id = "id",
                  dv = "intent",
                  between = c("exp"), covariate = c("fw"), factorize = FALSE, 
                  data = df, anova_table = list(es = "pes", correction = "none"))

aov.out$Anova
summary(aov.out)
knitr::kable(nice(aov.out))



#################################################################

# linear regression

df = read.csv(file.choose(), header = TRUE, sep = ',', stringsAsFactors = FALSE)

attach(df)

model = lm(prop ~ fw + de + du, data = df) #Create a linear regression
summary(model)

library(lm.beta)
# extract the beta value (coefficient)
lm.beta(model)

