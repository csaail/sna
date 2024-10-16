
#P6 Write a program to exhibit Structural Equivalence distances, automorphic equivalence, and regular equivalence from a network.
library(sna)
library(igraph)
links2 <- read.csv("Dataset2-Media-User-Example-EDGES.csv", header=T, row.names=1)
eq <- equiv.clust(links2)
plot(eq)

#Get Structural Equivalence distances
g.se<-sedist(links2)
Plot a metric MDS of vertex positions in two dimensions
plot(cmdscale(as.dist(g.se)))

#Blockmodeling
b<-blockmodel(links2,eq,h=10)
plot(b)
