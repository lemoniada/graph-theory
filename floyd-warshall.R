dane=read.table(file="C:\\Users\\Windows\\Desktop\\graph-theory\\mst_distance_matrix.txt")
dane=as.matrix(dane)
n=nrow(dane)
G=graph.adjacency(dane,weighted=TRUE)
V(G)$color=3
tkplot(G,edge.label=E(G)$weight)
macierz=matrix(0,n,n)
for (i in 1:n){
  for (j in 1:n){
    if (i!=j){
      if (dane[i,j]!=0){
        macierz[i,j]=dane[i,j]
      }else{
        macierz[i,j]=1000
      }
    }
  }
}

for (k in 1:(n-1)){
  for (i in 1:n){
    for (j in 1:n){
      macierz[i,j]=min(macierz[i,j],macierz[i,k]+macierz[k,j])
    }
  }
}
macierz
