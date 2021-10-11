pseudo_random_numbers_generator = function (n, a, x, c, m) {
	if (n >= 1) {
		result <- integer(n)
		result[1] <- (a*x + c) %% m

		if (n >= 2) {
			for (i in 2:n) {
				result[i] = (a*result[i-1]  + c) %% m
			}
		}

		result
	}
	else {
		c()
	}
}

num_students <- 750
num_subject <- 6

size <- num_subject * num_students

marks <- matrix(pseudo_random_numbers_generator(size, 2, 60, 30, 101), nrow=num_students, byrow=TRUE)

cat("Overall Mean       ->", mean(marks), "\n")
cat("Overall Median     ->", median(marks), "\n")
cat("Overall Sd         ->", sd(marks), "\n")


for (i in 1:dim(marks)[2]) {

	col <- marks[, i]

	quants <- quantile(col, c(0.25, 0.5, 0.75))
	iqr <- quants[3] - quants[1]

	upper_limit <- quants[3] + (1.5 * iqr)
	lower_limit <- quants[1] - (1.5 * iqr)

	cat(i, "\bth Subject Mean   ->", mean(col), "\n")
	cat(i, "\bth Subject Median ->", median(col), "\n")
	cat(i, "\bth Subject Sd     ->", sd(col), "\n")
	cat(i, "\bth Subject Sd     ->", sd(col), "\n")
	cat(i, "\bth Subject IQR    ->", iqr,'\n')
	cat(i, "\bth Subject Outliers  ->", col[col > upper_limit || col < lower_limit], '\n')

	cat('\n')

	hist(col, main="Subject Marks")
}

hist(marks)

