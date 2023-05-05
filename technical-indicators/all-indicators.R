# install.packages("quantmod")
library(quantmod)

getSymbols("AAPL")
chartSeries(AAPL,
            subset = '2022-06::2023-05',
            theme = chartTheme('white')
)

# Simple moving average
addSMA(n = 30, on = 1, col = "blue") #Short run
addSMA(n = 200, on = 1, col = "red") #Long run

# Exponential moving average
addEMA(n = 30, on = 1, col = "green") #Short run
addEMA(n = 200, on = 1, col = "yellow") #Long run

# Bollinger band
addBBands(n = 20, sd = 2)

# Momentum
addMomentum(1)

# Rate of change
addROC(7,)

# Moving average convergence/divergence
addMACD(fast = 12, slow = 26, signal = 9, type = "EMA")

# Relative strength index
addRSI(n = 14, maType = "EMA")