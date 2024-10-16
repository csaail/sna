#P2 Perform following tasks:
#(i) View data collection forms and/or import one-mode/two-mode datasets;
getwd()
setwd("C:/Users/Saail Chavan/Downloads/SNA/CSV") 
nodes <- read.csv("Dataset1-Media-Example-NODES.csv", header=T, , as.is=T)
head(nodes)
links <- read.csv("Dataset1-Media-Example-EDGES.csv", header=T, , as.is=T)
head(links)

#(ii) Basic Networks matrices transformations
net <- graph.data.frame(d=links, vertices=nodes, directed=T)
m=as.matrix(net)
get.adjacency(m)
plot(net)