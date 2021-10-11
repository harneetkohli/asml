simulation_count <- 100000

n <- 250
success_probability = 0.5

sm <- 0

for (x in 1:simulation_count) {
	random_binomial_distribution <- rbinom(n, 1, success_probability)
	sm <- sm + length(which(rle(random_binomial_distribution)$lengths >= 16))
}

print(sm / simulation_count)

