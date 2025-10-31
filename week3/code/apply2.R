##apply2.R
##Author: Ekadh Ranganathan
##Date: 31st October 2025

SomeOperation <- function(v) {
    if (sum(v) > 0) {
        return (v*100)
    } else {
        return (v)
    }
}

M <- matrix(rnorm(100), 10, 10)
print(apply(M, 1, SomeOperation))