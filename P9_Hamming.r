#install.packages("e1071")
library(e1071)

# Define the binary vectors
x <- c(0, 0, 0, 0)
y <- c(0, 0, 1, 0)
z <- c(0, 1, 1, 1)
w <- c(0, 1, 1, 1)

# Calculate Hamming distances
hamming.distance(x, y)  # Output: 1
hamming.distance(y, z)  # Output: 2
hamming.distance(z, w)  # Output: 0
hamming.distance(x, w)  # Output: 3
hamming.distance(x, z)  # Output: 3