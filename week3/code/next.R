##next.R
##Author: Ekadh Ranganathan
##Date: 31st October 2025

i <- 0

for (i in seq(10)) {
  if ((i %% 2) == 0) {
    next
  }
  print(i)
}