library(igraph)
davis <-read.csv("davis.csv")
g <- graph.data.frame(davis, directed=FALSE)
plot(g) 

bipartite.mapping(g)
V(g)$type <- bipartite_mapping(g)$type
plot(g)

plot(g, vertex.label.cex = 0.8, vertex.label.color ="black")
V(g)$color <- ifelse(V(g)$type, "lightblue", "salmon")
V(g)$shape <- ifelse(V(g)$type, "circle", "square")
E(g)$color <- "lightgray"
plot(g, vertex.label.cex = 0.8, vertex.label.color ="black")

V(g)$label.color <- "black"
V(g)$label.cex <- 1
V(g)$frame.color <- "gray"
V(g)$size <- 18
plot(g, layout = layout_with_graphopt)
plot(g, layout=layout.bipartite, vertex.size=7,
vertex.label.cex=0.6) 