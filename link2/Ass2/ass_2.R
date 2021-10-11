# Assignment 2
df <- read.csv('./AutoInsurSweden.csv')

# Replace Na with 0
df[is.na(df)] = 0

mat <- data.matrix(df)

cat('Mean   ->', mean(mat), '\n')
cat('Median ->', median(mat), '\n')
cat('Sd     ->', sd(mat), '\n')

for (i in 1:dim(mat)[2]) {
	col <- mat[, i]

	quants <- quantile(col, c(0.25, 0.5, 0.75))
	iqr <- quants[3] - quants[1]
	lower_limit <- quants[1] - (1.5*iqr)
	upper_limit <- quants[3] + (1.5*iqr)

	cat(i, 'Mean     ->', mean(col), '\n')
	cat(i, 'Median   ->', median(col), '\n')
	cat(i, 'Sd       ->', sd(col), '\n')

	cat(i, 'Outliers ->', col[col < lower_limit || col > upper_limit], '\n')
}
