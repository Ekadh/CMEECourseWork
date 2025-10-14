# A simple script to show R inputs and outputs

mydata <- read.csv("../data/trees.csv", header = TRUE)
write.csv(mydata, "../sandbox/mydata.csv")
write.table(mydata[1, ], file = "../sandbox/mydata.csv", append = TRUE)
write.csv(mydata, "../sandbox/mydata.csv", row.names = TRUE)
write.table(mydata, "../sandbox/mydata.csv", col.names = FALSE)