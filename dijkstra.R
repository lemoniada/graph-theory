library(igraph)
macierz=matrix(0,7,7)
nazwy=c("Jelitkowo","Strzyza","Opera","Migowo","Glowny","Lostowice","Stogi")
rownames(macierz)=nazwy
colnames(macierz)=nazwy
macierz["Jelitkowo","Strzyza"]=macierz["Strzyza","Jelitkowo"]=13
macierz["Strzyza","Opera"]=macierz["Opera","Strzyza"]=9
macierz["Jelitkowo","Opera"]=macierz["Opera","Jelitkowo"]=18
macierz["Opera","Migowo"]=macierz["Migowo","Opera"]=17
macierz["Opera","Glowny"]=macierz["Glowny","Opera"]=5
macierz["Glowny","Stogi"]=macierz["Stogi","Glowny"]=14
macierz["Glowny","Lostowice"]=macierz["Lostowice","Glowny"]=12
G=graph.adjacency(macierz,weighted = TRUE)
V(G)$color="white"
tkplot(G,edge.label=E(G)$weight)
shortest.paths(G,algorithm="dijkstra",v="Lostowice")
shortest.paths(G,algorithm="dijkstra")