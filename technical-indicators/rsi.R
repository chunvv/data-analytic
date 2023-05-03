install.packages("quantmod")
library(quantmod)

getSymbols("AAPL")
chartSeries(AAPL,
            subset = '2023-01::2023-05',
            theme = chartTheme('white')
)

# 5.11.1 Trading signal
# Buy signal arises when RSI is less than 30.
# Sell signal arrises when RSI is higher than 30.

addRSI(n=14,maType="EMA")
