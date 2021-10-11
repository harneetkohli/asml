animals <- c(rep('dog', 3), rep('horse', 3))

count <- 0
for (i in 1:factorial(length(animals))) {
	random_sample <- sample(animals)
	if (identical(animals, random_sample)) {
		count <- count + 1
	}
}

print(count / factorial(length(animals)))
cat('Actual Probability :',  (factorial(3) ^ 2) / factorial(6))

