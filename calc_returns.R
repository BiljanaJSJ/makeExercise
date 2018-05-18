library(dplyr)
spx <- read.csv("sp500_yearend.csv")
spx_yoy_return <- mutate(spx, Return=c(NA, diff(Close)) / lag(Close))
write.csv(spx_yoy_return, "sp500_yoy_return.csv")