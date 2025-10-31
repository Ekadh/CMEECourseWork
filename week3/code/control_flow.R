##control_flow.R
##Author: Ekadh Ranganathan
##Date: 31st October 2025
# if statements

a <- TRUE

if (a == TRUE) {
  print("a is TRUE")
} else {
  print("a is FALSE")
}

z <- runif(1)
if (z <= 0.5) {print("Less than a half")}

# for loops

for (i in seq(10)) {
  j <- i * i
  print(paste(i, " squared is", j))
}

for (species in c('Heliodoxa rubinoides', 
                 'Boissonneaua jardini', 
                 'Sula nebouxii')) {
  print(paste('The species is', species)) 
}

# while loops

i <- 0
while (i < 10) {
  i <- i + 1
  print(i^2)
}