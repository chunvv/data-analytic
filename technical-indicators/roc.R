install.packages("quantmod")
library(quantmod)

getSymbols("AAPL")
chartSeries(AAPL,
            subset = '2023-01::2023-05',
            theme = chartTheme('white')
)

# 5.8.1 Trading signal
# Buy signal arises when ROC changes from negative to positive.
# Sell signal arises when ROC changes from positive to negative.
addROC(7,)
