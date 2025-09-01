ts_data = ts(Cigarette_Consumption, start = 1973, frequency = 1)
plot(ts_data)

a = diff(ts_data)
plot(a)

b = diff(ts_data, 4)

library(astsa)

acf2(b)

sarima(b, 0, 0, 1)
sarima(b, 1, 0, 0)
sarima(b, 1, 0, 1)

sarima.for(ts_data, 5, 1, 1, 0)
