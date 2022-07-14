library(tidyverse)
DPJ2012 <- read_rds("data/hr-data.Rds") %>%
  filter(year == 2012, party == "DPJ")
fit_3 <- lm(voteshare ~ expm + age, data = DPJ2012)
coef(fit_3)
summary(fit_3)

