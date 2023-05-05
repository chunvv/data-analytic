library(PerformanceAnalytics)
library(quantmod)
getSymbols("MSFT")

price <- Cl(MSFT) # close price
r <- price / Lag(price) - 1 # % price change
delta <- 0.005 #threshold
signal <- c(0) # first date has no signal

#Loop over all trading days (except the first)
for (i in 2:length(price)) {
  if (r[i] > delta) {
    signal[i] <- 1
  } else
    signal[i] <- 0
}
# Assign time to action variable using reclass
signal <- reclass(signal, price)

# Each point is now attached with time
tail(signal, n = 3)

chartSeries(MSFT,
            type = 'line',
            subset = "2023-01::2023-05",
            theme = chartTheme('white'))
addTA(signal, type = 'S', col = 'red')

trade <- Lag(signal, 1)

returnMSFT <- (Cl(MSFT) - Op(MSFT)) / Op(MSFT)
ret <- returnMSFT * trade
names(ret) <- "filter"

chart.Bar(ret,
          main = "Naive Rule: Daily return")
chart.CumReturns(ret,
                 main = "Naive Rule: Cum Returns")
chart.Drawdown(ret,
               main = "Naive Rule: Percentage Drawdown")
charts.PerformanceSummary(ret,
                          main = "Naive Buy Rule")