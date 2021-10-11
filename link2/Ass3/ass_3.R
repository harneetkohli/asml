num_students <- 750
num_subjects <- 6

size <- num_subjects * num_students

marks_1 <- matrix(sample(0:100, size, replace=T), nrow = num_students) 
marks_2 <- matrix(round(runif(size, min=0, max=100)), nrow = num_students) 
marks_3 <- matrix(round(rnorm(size, mean=50, sd=7)), nrow = num_students) 

md <- function(x) (sum(abs(x - mean(x))) / length(x))

mode <- function(v) {
   uniqv <- unique(v)
   uniqv[which.max(tabulate(match(v, uniqv)))]
}

display <- function(x) {
	cat('Mean   ->', mean(x), '\n')
	cat('Mode   ->', mode(x), '\n')
	cat('Median ->', median(x), '\n')

	cat('\n')

	plot(tabulate(x), type='l')
	hist(tabulate(x))
}

display(marks_1)
display(marks_2)
display(marks_3)

