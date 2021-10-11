# Returns number of columns
#length(df)

# Return Dimensions of df
#dim(df)

# df[rows, cols]
# Always use ,
#df[3,5]


# Returns Column
#df[2]

# Summary of df
#summary(df)


df <- read.csv('./auto.csv')
print(summary(df))
cat('\n\n\n')

print(cor(df$Price, df$MPG))
cat('\n\n\n')

numeric_cols <- df[3:length(df)]
print(cor(numeric_cols))
cat('\n\n\n')

numeric_cols_index <- unlist(lapply(df, is.numeric)) # Returns the list where is.numeric function gave true 
auto_num <- df[, numeric_cols_index]
print(auto_num)
cat('\n\n\n')

# install.packages('corrgram')
corrgram::corrgram(numeric_cols)


index_cols <- c(1:4)
auto_subset <- auto_num[1:4]
print(auto_subset)

