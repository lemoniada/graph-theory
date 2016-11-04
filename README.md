# graph-theory


## Adjecency

Number of triangles in an undirected graph G is equal to tr(A^3)/6, where A is an adjacency matrix of G. Each vertex that forms triangle has different colour.
https://en.wikipedia.org/wiki/Adjacency_matrix#Properties


## Kirchoff's theorem

Calculating the number of spanning trees in a graph.
https://en.wikipedia.org/wiki/Kirchhoff%27s_theorem

## Dijkstra

Create weighted graph and calculate shortest paths from Lostowice
https://en.wikipedia.org/wiki/Dijkstra%27s_algorithm

Example output:
> shortest.paths(G,algorithm="dijkstra",v="Lostowice")
          Jelitkowo Strzyza Opera Migowo Glowny Lostowice Stogi
Lostowice        35      26    17     34     12         0    26
> shortest.paths(G,algorithm="dijkstra")
          Jelitkowo Strzyza Opera Migowo Glowny Lostowice Stogi
Jelitkowo         0      13    18     35     23        35    37
Strzyza          13       0     9     26     14        26    28
Opera            18       9     0     17      5        17    19
Migowo           35      26    17      0     22        34    36
Glowny           23      14     5     22      0        12    14
Lostowice        35      26    17     34     12         0    26
Stogi            37      28    19     36     14        26     0
