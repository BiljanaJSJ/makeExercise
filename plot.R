library(ggplot2)
spx_yoy_return <- read.csv("sp500_yoy_return.csv")
spx_plot <- qplot(Year, Return, data=spx_yoy_return) +
  labs(title = "S&P500 yearly return 1951-2015",
       x = "Year",
       y = "Percent Return")
ggsave("sp500_yoy_return.png", spx_plot)