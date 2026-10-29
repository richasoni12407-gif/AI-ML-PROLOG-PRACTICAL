% Practical 9: Hill Climbing
value(1,2). value(2,5). value(3,8). value(4,12). value(5,10). value(6,7).
neighbor(X,Y):-Y is X+1,Y=<6. neighbor(X,Y):-Y is X-1,Y>=1.
hill_climb(C,B):-value(C,V),findall(N,(neighbor(C,N),value(N,NV),NV>V),Better),(Better=[]->B=C;Better=[Next|_],hill_climb(Next,B)).
% Query: ?- hill_climb(1,Best). Best = 4.
