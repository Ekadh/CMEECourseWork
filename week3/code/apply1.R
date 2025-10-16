M <- matrix(rnorm(100), 10, 10)

RowMeans <- apply(M, 1, mean)
print(RowMeans)

RowVars <- apply(M, 1, var)
print(RowVars)

## To go by column instead of row ##

ColMeans <- apply(M, 2, mean)
print(ColMeans)