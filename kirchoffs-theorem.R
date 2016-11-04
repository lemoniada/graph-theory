library(igraph)
n=6
G=sample_gnp(n,0.3)

Laplasjan=function(graf){
  stopnie=c()
  macierz=as_adjacency_matrix(graf,sparse=FALSE)
  macierz2=matrix(,n,n)
  for(i in 1:n){
    stopnie[i]=sum(macierz[i,])
    for(j in 1:n){
      if (i==j){
        macierz2[i,j]=stopnie[i]
      } else{
        if (macierz[i,j]>0){
          macierz2[i,j]=-1
        }else{
          macierz2[i,j]=0
        }
      }
    }
  }
  return(det(macierz2[-1,-1]))
}
x=Laplasjan(G)
cat('Liczba drzew spinajacych grafu G wynosi',x)


tkplot(G)
