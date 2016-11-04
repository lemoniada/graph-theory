n=12
library(igraph)
G=sample_gnp(n,0.2)
wierzcholki=c()
Trojkaty=function(g){
  m=as_adjacency_matrix(g,sparse=FALSE)
  m3=m%*%m%*%m
  licznik=1
  for (i in 1:nrow(m3)){
    if (diag(m3)[i]>0) {
      wierzcholki[licznik]=i
      licznik=licznik+1
    }
  }
  return(list(sum(diag(m3))/6,m3,wierzcholki))
}

Trojkaty(G)
V(G)[Trojkaty(G)[[3]]]$color=2
tkplot(G)