install.packages("quantmod")
library(quantmod)

getSymbols("AAPL")
chartSeries(AAPL,
            subset = '2023-01::2023-05',
            theme = chartTheme('white')
)

# 5.4.2 Trading Signal
# Buy signal arises when price is above the band.
# Sell signal arises when price is above the band.
addBBands(n = 20, sd = 2)
