#P5 Write a program to distinguish between a network as a matrix, a network as an edge list, and a network as a sociogram (or “network graph”) using 3 distinct networksrepresentatives of each.

library(igraph)
ng<-graph.formula(Andy++Garth,Garth-+Bill,Bill-+Elena,Elena++Frank,Carol-+Andy,Carol-+Elena,Carol++Dan,Carol++Bill,Dan++Andy,Dan++Bill)
plot(ng)
#A network as a matrix
get.adjacency(ng)
#A network as an edge list
E(ng)
get.adjedgelist(ng,mode="in")