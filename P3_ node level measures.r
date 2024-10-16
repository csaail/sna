#Compute the following node level measures:

#(i) Density; 
library(igraph)
g <- graph.formula(1-2, 1-3, 2-3, 2-4, 3-5, 4-5, 4-6, 4-7, 5-6, 6-7)
plot(g)
vcount(g)
ecount(g)
# Calculate the density of the graph
ecount(g) / (vcount(g) * (vcount(g) - 1))

#(ii) Degree; 
nodes <- read.csv("Dataset1-Media-Example-NODES.csv", header=T, , as.is=T)
head(nodes)
links <- read.csv("Dataset1-Media-Example-EDGES.csv", header=T, , as.is=T)
head(links)
net <- graph.data.frame(d=links, vertices=nodes, directed=T)
m = as.matrix(net)
get.adjacency(matrices)
degree(net)

#(iii) Reciprocity; 
dg<-graph.formula(1-+2,1-+3,2++3)
plot(dg)
reciprocity(dg)
dyad.census(dg)
2*dyad.census(dg)$mat/ecount(dg)

#(iv) Transitivity; 
kite<-graph.famous("Krackhardt_Kite")
atri<-adjacent.triangles(kite)
plot(kite, vertex.label=atri)
transitivity(kite, type="local")
adjacent.triangles(kite) / (degree(kite) * (degree(kite)-1)/2)

#(v) Centralization; 
## Degree of centrality
centralization.degree(net, mode="in", normalized=T)
## Closeness Centralization
closeness(net, mode="all", weights=NA)
centralization.closeness(net, mode="all",normalized=T)
## Between Centrality
betweenness(net, directed=T, weights=NA)
edge.betweenness(net, directed=T, weights=NA)
centralization.betweenness(net, directed=T, normalized=T)
## Eigen vector centrality
centralization.evcent(net, directed=T, normalized=T)

#(vi) Clustering.
plot(kite)
get.adjedgelist(kite, mode = c("all", "out", "in", "total"))