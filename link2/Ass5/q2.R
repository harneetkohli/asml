simulation_count <- 100000

sample_size <- 8
probability_success <- 0.5

sm <- 0

for (x in 1:simulation_count) {
	sm <- length(which(rle(rbinom(sample_size, 1, probability_success))$lengths < 2))
}

print(sm / simulation_count)

cat('Real Value', 2 * 0.5^8)

