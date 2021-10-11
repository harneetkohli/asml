df <- read.csv('./regressionDataSet.csv')

summary(df)
cat('\n\n\n')

num_rows <- dim(df)[1]
train_percent <- 0.7
num_train_rows <- round(train_percent * num_rows)

train <- df[1:num_train_rows,]
test <- df[num_train_rows:num_rows,]

# for Predicting Area using Energy
lr <- lm(Area~Energy, df)
predicted <- predict(lr, test)

cor(df$Area[num_train_rows:num_rows], predicted)


root_mean_square <- function(x, y) {
	sqrt(mean((x-y)^2))
}

accuracy <- root_mean_square(df$Area[num_train_rows:num_rows], predicted)
accuracy

print(df$Energy)

plot(df$Energy, df$Area, main="Regression", type='l', xlab='Independent- Energy', ylab='Dependent - Area', col='blue')
lines(df$Energy[num_train_rows:num_rows], predicted, col='red', )

