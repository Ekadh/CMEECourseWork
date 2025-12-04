# Author: Ekadh er925@ic.ac.uk
# Date: Oct 2025
# Desc: A script that calculates tree heights given distance and angle
#
#Formula used:
# height = distance * tan(radians)
#
# ARGUMENTS
# degrees:   The angle of elevation of tree
# distance:  The distance from base of tree (e.g., meters)
#
# OUTPUT
# The heights of the tree, same units as "distance"

# Load the data
trees <- read.csv("../data/trees.csv")

# Function to calculate tree height
TreeHeight <- function(degrees, distance) {
    radians <- degrees * pi / 180
    height <- distance * tan(radians)
    return (height)
}

# Calculate tree heights and add as a new column
trees$Tree.Height.m <- TreeHeight(trees$Angle.degrees, trees$Distance.m)

# Write the results to a new CSV file
write.csv(trees, "../results/TreeHts.csv", row.names = FALSE)