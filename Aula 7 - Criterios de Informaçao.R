
> library(readxl)
> variacao_PIB <- read.table("c:/EconometriaA/Variacao.xls", header = T)
> var_PIB <- ts(variacao_PIB$variacao_PIB, start =1951, frequency = 1 )
> View(var_PIB)
> plot(var_PIB, main="Variacao do PIB Brasileiro", col="Blue", ylab="%PIB", xlab="Ano")
> acf(var_PIB)
> pacf(var_PIB)
> AR1 <- arima(var_PIB, order = c(1,0,0))
> MA1 <- arima(var_PIB, order = c(0,0,1))
> ARMA11 <- arima(var_PIB, order = c(1,0,1))
> AIC(AR1)
[1] -237.3294
> BIC(AR1)
[1] -230.9968
> AR2 <- arima(var_PIB, order = c(2,0,0))
> MA2 <- arima(var_PIB, order = c(0,0,2))
> MA3 <- arima(var_PIB, order = c(0,0,3))
> MA4
Error: object 'MA4' not found
> MA4 <- arima(var_PIB, order = c(0,0,4))
> MA5 <- arima(var_PIB, order = c(0,0,5))
> MA6 <- arima(var_PIB, order = c(0,0,6))
> MA7 <- arima(var_PIB, order = c(0,0,7))
> MA8 <- arima(var_PIB, order = c(0,0,8))
> MA9 <- arima(var_PIB, order = c(0,0,9))
> ARMA12 <- arima(var_PIB, order = c(0,0,12))
> ARMA13 <- arima(var_PIB, order = c(0,0,13))
> ARMA14 <- arima(var_PIB, order = c(0,0,14))
> ARMA15 <- arima(var_PIB, order = c(0,0,15))
> ARMA16 <- arima(var_PIB, order = c(0,0,16))
> ARMA17 <- arima(var_PIB, order = c(0,0,17))
> ARMA18 <- arima(var_PIB, order = c(0,0,18))
> ARMA19 <- arima(var_PIB, order = c(0,0,19))
> ARMA20 <- arima(var_PIB, order = c(0,0,20))
> ARMA21 <- arima(var_PIB, order = c(0,0,21))
> ARMA22 <- arima(var_PIB, order = c(0,0,22))
> ARMA23 <- arima(var_PIB, order = c(0,0,23))
> ARMA24 <- arima(var_PIB, order = c(0,0,24))
> ARMA25 <- arima(var_PIB, order = c(0,0,25))
> ARMA26 <- arima(var_PIB, order = c(0,0,26))
> ARMA27 <- arima(var_PIB, order = c(0,0,27))
> ARMA28 <- arima(var_PIB, order = c(0,0,28))
> ARMA29 <- arima(var_PIB, order = c(0,0,29))
> estimacoes <- list(AR1, AR2, MA1, MA2, MA3, MA4, MA5, MA6, MA7, MA8, MA9,
                     + ARMA11,ARMA12, ARMA13, ARMA14,ARMA15, ARMA16,ARMA17,ARMA18,ARMA19,
                     + ARMA21,ARMA22,ARMA23,ARMA24,ARMA25,ARMA26,ARMA27,ARMA28,ARMA29)
> sapply(estimacoes, AIC)
[1] -237.3294 -242.3609 -232.5212 -239.1580 -239.7428 -239.2085 -238.1168 -236.4707
[9] -234.5466 -233.6382 -234.0163 -240.6797 -231.5144 -229.5152 -227.5518 -226.6705
[17] -224.7075 -222.7148 -222.4464 -220.4499 -216.9876 -215.1702 -214.2494 -211.3763
[25] -210.7834 -209.9288 -208.1356 -208.2907 -207.1429
> sapply(estimacoes, BIC)
[1] -230.9968 -233.9174 -226.1886 -230.7145 -229.1884 -226.5432 -223.3407 -219.5837
[9] -215.5487 -212.5295 -210.7967 -232.2362 -201.9622 -197.8520 -193.7778 -190.7856
[17] -186.7117 -182.6082 -180.2289 -176.1215 -168.4375 -164.5092 -161.4775 -156.4936
[25] -153.7898 -150.8243 -146.9202 -144.9645 -141.7058
> AIC <- sapply(estimacoes, AIC)
> BIC <- sapply(estimacoes, BIC)
> Modelo <- c("AR1", "AR2", "MA1", "MA2", "MA3", "MA4", "MA5", "MA6", "MA7", "MA8", "MA9", "ARMA11","ARMA12", "ARMA13", "ARMA14","ARMA15", "ARMA16","ARMA17","ARMA18","ARMA19","ARMA21","ARMA22","ARMA23","ARMA24","ARMA25","ARMA26","ARMA27","ARMA28","ARMA29")
> Resultados <- data.frame(Modelo, AIC, BIC)
> View(Resultados)
> save.image("C:/EconometriaA/AULA 7/Comandos criterios de informação.RData")
> 