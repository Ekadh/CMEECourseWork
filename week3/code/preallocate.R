##preallocate.R
##Author: Ekadh Ranganathan
##Date: 31st October 2025

NoPreallocFun <- function(x) {
    a <- vector()
    for (i in 1:x) {
        a <- c(a, i)
        #print(a)
        #print(object.size(a))
    }
}
print(system.time(NoPreallocFun(1000)))

PreallocFun <- function(x) {
    a <- rep(NA, x)
    for (i in 1:x) {
        a[i] <- i
        #print(a)
        #print(object.size(a))
    }
}
print(system.time(PreallocFun(1000)))