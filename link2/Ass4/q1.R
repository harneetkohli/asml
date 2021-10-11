n <- 2
num_days <- 365

# Probability of Atleast having two same Birthdays = 1 - (no same birthday)

prob <- function(n) {
	if (n > 365) 1
	else {
		probability <- 1
		for (i in 0:n-1) {
			probability <- (probability * (num_days - i)) / 365
		}
		1 - probability
	}
}

vec <- c() 

for (i in 1:100) {
	vec <- append(vec, prob(i))
}

cat(which(vec > 0.5)[1])
plot(vec, type='l')

