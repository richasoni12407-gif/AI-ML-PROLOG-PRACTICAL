% Practical 8: A* Search; f(n)=g(n)+h(n)
:- use_module(library(pairs)).
edge(a,b,1). edge(a,c,4). edge(b,d,2). edge(b,e,5). edge(c,f,1). edge(d,g,3). edge(e,g,1). edge(f,g,5).
heuristic(a,6). heuristic(b,5). heuristic(c,4). heuristic(d,3). heuristic(e,1). heuristic(f,4). heuristic(g,0).
astar(S,G,P,C):-heuristic(S,H),astar_open([H-[0,[S]]],G,R,C),reverse(R,P).
astar_open([_- [C,[G|R]]|_],G,[G|R],C).
astar_open([_- [Cost,[N|R]]|Other],G,P,FC):-findall(F-[NC,[X,N|R]],(edge(N,X,Step),\+member(X,[N|R]),NC is Cost+Step,heuristic(X,H),F is NC+H),Children),append(Other,Children,All),keysort(All,Sorted),astar_open(Sorted,G,P,FC).
% Query: ?- astar(a,g,Path,Cost).
