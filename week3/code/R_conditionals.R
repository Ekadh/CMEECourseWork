##R_conditionals.R
##Author: Ekadh Ranganathan
##Date: 31st October 2025

# Conditional function 1

is.even <- function(n = 2) {
    if (n %%2 == 0) {
        return(paste(n, "is even"))
    } else {
        return(paste(n, "is odd"))
    }
}

is.even(6)

# Conditional function 2

is.power2 <- function(n) {
    if (log2(n) %% 1 == 0) {
        return(paste(n, "is a power of 2"))
    } else {
        return(paste(n, "is not a power of 2"))
    }
}

is.power2(8)

# Conditional function 3

is.prime <- function(n) {
    if (n == 0) {
        return(paste(n, "is just 0"))
    } else if (n ==1) {
        return(paste(n, "is just 1"))
    }

    ints <- 2:(n-1)

    if (all(n %% ints != 0)) {
        return(paste(n, "is a prime number"))
    } else {
        return(paste(n, "is not a prime number"))
    }
}

is.prime(23)