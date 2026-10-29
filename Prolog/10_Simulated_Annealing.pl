% Practical 10: Simplified educational simulated annealing
% Full algorithm accepts worse moves probabilistically using temperature.
value(1,2). value(2,5). value(3,8). value(4,12). value(5,10). value(6,7).
neighbor(X,Y):-Y is X+1,Y=<6. neighbor(X,Y):-Y is X-1,Y>=1.
anneal(C,0,C).
anneal(C,T,B):-T>0,value(C,V),findall(NV-N,(neighbor(C,N),value(N,NV)),Moves),(Moves=[]->B=C;sort(Moves,S),reverse(S,[Top-NT|_]),(Top>=V->Next=NT;S=[_-Next|_]),T1 is T-1,anneal(Next,T1,B)).
% Query: ?- anneal(1,5,Best). This is a simplified demo, not probabilistic full SA.
