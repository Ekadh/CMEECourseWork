i <- 0

for (i in seq(10)) {
  if ((i %% 2) == 0) {
    next
  }
  print(i)
}