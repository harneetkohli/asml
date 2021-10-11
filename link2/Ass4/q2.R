num_trials <- 10
prob_succes <- 0.6

k <- 0:num_trials

# Treating negative values as loss, positive profit
payoff <- k^2 - (7 * k)
plot(payoff, type='l')

# Probability of getting r heads in n trials -> nCr * p^r * q^(n-r)
probability_getting_k_heads <- choose(num_trials, k) * (prob_succes ^ k) * ((1 - prob_succes) ^ (num_trials - k))

cat('PayOff ->', payoff, '\n')
cat('Probability of Getting K Heads ->', probability_getting_k_heads, '\n')

overall_approximation <- sum(probability_getting_k_heads * payoff)
cat(overall_approximation, '\n')

if (overall_approximation > 0) {
	cat("Good Possibility of Profit.\n")
} else {
	cat("LOSS probability is more.\n")
}

