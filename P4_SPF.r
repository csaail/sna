#Practical 4: Aim: For a given network find the following:
# (i) Length of the shortest path from a given node to another node.
library(igraph)
matt <- as.matrix(read.table(text= "
node R S T U
R 7 5 0 0
S 7 0 0 2
T 0 6 0 0
U 4 0 1 0", header=T))
nms <- matt[,1 ]
matt <- matt[, -1]
colnames(matt) <- rownames(matt) <- nms
matt[is.na(matt)] <- 0
g <- graph.adjacency(matt, weighted=TRUE)
plot(g)

## Shortest Path
s.paths <- shortest.paths(g, algorithm = "dijkstra")
print(s.paths)
shortest.paths(g, v="R", to="S")
plot(g, edge.label=E(g)$weight)

# (ii) The density of the graph
## The density of a graph is the ratio of the number of edges and the number of possible edges.
library(igraph)
dg <- graph.formula(1-+2, 1-+3, 2++3)
plot(dg)
## Considering Loops
graph.density(dg, loops=TRUE)
## With out considering loops
graph.density(simplify(dg), loops=FALSE)

# (iii) Draw egocentric network of node R with chosen configuration parameters.
# install.packages('ergm.ego')
ego_net <- make_ego_graph(g, order=1, nodes="R")[[1]]
# Plot the egocentric network for node R with custom parameters
plot(ego_net, edge.label=E(ego_net)$weight)
