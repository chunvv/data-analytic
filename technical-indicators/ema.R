install.packages("quantmod")
library(quantmod)

getSymbols("AAPL")
chartSeries(AAPL,
            subset = '2023-01::2023-05',
            theme = chartTheme('white')
)

# 5.3.2 Trading signal
# Buy signal arises when a short-run EMA crosses from below to above a long-run EMA.
# Sell signal arrises when a short-run EMA crosses from above to above a long-run EMA.

addEMA(n = 30, on = 1, col = "blue")
addEMA(n = 200, on = 1, col = "red")