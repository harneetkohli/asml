x<-rpois(100, 50)
y<-rpois(100, 100)
z<-rpois(100, 150)

df <- data.frame(x, y, z)

lr <- lm(z~x+y, df)
r2 <- 1 - (sum((y - predict(lr, df))^2) / sum((y - mean(predict(lr, df)))^2))
lr
r2

fit1 <- lm(y~x, df)
r2_1 <- 1 - (sum((y - predict(fit1, df))^2) / sum((y - mean(predict(fit1, df)))^2))
fit1
r2_1
cat('\n\n\n')

fit2 <- lm(y~x^2 + x, df)
r2_2 <- 1 - (sum((y - predict(fit2, df))^2) / sum((y - mean(predict(fit2, df)))^2))
fit2
r2_2 
cat('\n\n\n')

fit3 <- lm(log(y)~x, df)
r2_3 <- 1 - (sum((y - predict(fit3, df))^2) / sum((y - mean(predict(fit3, df)))^2))
fit3
r2_3 
cat('\n\n\n')

