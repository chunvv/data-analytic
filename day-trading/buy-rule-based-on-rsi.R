library(PerformanceAnalytics)
library(quantmod)
getSymbols("MSFT")

day <- 14
price <- Cl(MSFT)
returnMSFT <- (Cl(MSFT) - Op(MSFT)) / Op(MSFT)

signal <- c()                    #initialize vector
rsi <- RSI(price, day)     #rsi is the lag of RSI
for (i in 1:length(price)){
  signal[i] <- 0
  if (isTRUE(rsi[i] < 30)){
    signal[i] <- 1
  }
}
signal <- reclass(signal, Cl(MSFT))

trade <- Lag(signal)
ret<-returnMSFT *trade
names(ret) <- 'RSI'
charts.PerformanceSummary(ret)