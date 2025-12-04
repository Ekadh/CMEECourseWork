# Author: Ekadh er925@ic.ac.uk
# Date: Oct 2025
# Desc: A simple script to show R inputs and outputs

mydata <- read.csv("../data/trees.csv", header = TRUE)
write.csv(mydata, "../results/mydata.csv")
write.table(mydata[1, ], file = "../results/mydata.csv", append = TRUE)
write.csv(mydata, "../results/mydata.csv", row.names = TRUE)
write.table(mydata, "../results/mydata.csv", col.names = FALSE)