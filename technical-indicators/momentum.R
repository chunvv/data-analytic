install.packages("quantmod")
library(quantmod)

getSymbols("AAPL")
chartSeries(AAPL,
            subset = '2023-01::2023-05',
            theme = chartTheme('white')
)

# 5.6.1 Trading signal
# Buy signal arises when momentum changes from negative to positive.
# Sell signal arises when momentum changes from positive to negative.
addMomentum(1)
