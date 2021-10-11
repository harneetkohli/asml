animals <- c('a', 'b', 'c', 'd', 'e', 'f')

count <- 0
for (i in 1:factorial(length(animals))) {
	random_sample <- sample(animals)
	if (identical(animals, random_sample)) {
		count <- count + 1
	}
}

print(count / factorial(length(animals)))
cat('Actual Probability :', 1 / factorial(length(animals)))

