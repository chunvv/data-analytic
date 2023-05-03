install.packages("quantmod")
library(quantmod)

getSymbols("IBM")
chartSeries(IBM,
            subset='2007-05::2009-01',
            theme=chartTheme('white')
)
addSMA(n=30,on=1,col = "blue")
addSMA(n=200,on=1,col = "red")