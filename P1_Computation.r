install.packages("igraph")
install.packages("e1071")

# P1 Write a program to compute the following for a given a network:
#(i) number of edges
library(igraph)
# Create the graph with specified edges
g <- graph.formula(1-2, 1-3, 2-3, 2-4, 3-5, 4-5, 4-6, 4-7, 5-6, 6-7)
#Name of Edges and nodes
V(g)
E(g)
#Plotting the graph
plot(g)

#Directed graph
library(igraph)
dg <- graph.formula(1-+2, 1-+3, 2++3)
plot(g)

#Graph with names
library(igraph)
dg1 <- graph.formula(Sam-+Mary, Sam-+Tom, Mary++Tom)
plot(dg1)

#(ii) number of nodes
library(igraph)
# Creating the first graph with names
dg1 <- graph.formula(Sam-+Mary, Sam-+Tom, Mary++Tom)
plot(dg1)
# Creating the second graph with numbers
g <- graph.formula(1-2, 1-3, 2-3, 2-4, 3-5, 4-5, 4-6, 4-7, 5-6, 6-7)
# Display vertices of the graph
V(g)
# Display edges of the graph
E(g)
# Count the number of vertices
vcount(g)
# Count the number of edges
ecount(g)

#(iii) degree of node
#(iv)node with lowest degree
degree(dg1, mode="in")
# Out-degree for directed graph 'dg1'
degree(dg1, mode="out")
# Node with the lowest degree in 'dg1'
V(dg1)$name[degree(dg1) == min(degree(dg1))]
# Node with the highest degree in 'dg1'
V(dg1)$name[degree(dg1) == max(degree(dg1))]

#(v) the adjacency list
neighbors(g,5)
neighbors(g,2)
get.adjlist(dg)
get.adjacency(g)

#(vi) matrix of the graph.
get.adjacency(g)