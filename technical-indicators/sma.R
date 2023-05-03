install.packages("quantmod")
library(quantmod)

getSymbols("AAPL")
chartSeries(AAPL,
            subset = '2023-01::2023-05',
            theme = chartTheme('white')
)

# 5.2.2 Trading signal
#Buy signal arises when a short-run SMA crosses from below to above a long-run SMA.
#Sell signal arrises when a short-run SMA crosses from above to above a long-run SMA.
addSMA(n = 30, on = 1, col = "blue")
addSMA(n = 200, on = 1, col = "red")