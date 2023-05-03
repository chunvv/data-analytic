install.packages("quantmod")
library(quantmod)

getSymbols("AAPL")
chartSeries(AAPL,
            subset = '2022-06::2023-05',
            theme = chartTheme('white')
)

# 5.9.2 Trading signal
# Buy signal arises when MACD crosses from below to above the signal line.
# Sell signal arrises when MACD crosses from above to below the signal line.

addMACD(fast = 12, slow = 26, signal = 9, type = "EMA")
