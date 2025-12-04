# Author: Ekadh er925@ic.ac.uk
# Date: Oct 2025
# Desc: A script for adding breaks in R loops

i <- 0

while (i < Inf) {
  if (i == 10) {
    break
  } else {
    cat("i equals ", i, " \n")
    i <- i + 1
  }
}