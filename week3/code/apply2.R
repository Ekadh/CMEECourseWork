# Author: Ekadh er925@ic.ac.uk
# Date: Oct 2025
# Desc: A script that demonstrates the use of the apply function

SomeOperation <- function(v) {
    if (sum(v) > 0) {
        return (v*100)
    } else {
        return (v)
    }
}

M <- matrix(rnorm(100), 10, 10)
print(apply(M, 1, SomeOperation))