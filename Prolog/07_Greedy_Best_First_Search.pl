% Practical 7: Greedy Best-First Search
:- use_module(library(pairs)).
edge(a,b). edge(a,c). edge(b,d). edge(b,e). edge(c,f). edge(d,g). edge(e,g). edge(f,g).
heuristic(a,7). heuristic(b,6). heuristic(c,4). heuristic(d,3). heuristic(e,2). heuristic(f,2). heuristic(g,0).
greedy(S,G,P):-greedy_open([[S]],G,R),reverse(R,P).
greedy_open([[G|R]|_],G,[G|R]).
greedy_open([[C|R]|Other],G,Result):-findall(H-[N,C|R],(edge(C,N),\+member(N,[C|R]),heuristic(N,H)),Pairs),keysort(Pairs,Sorted),candidates(Sorted,New),append(Other,New,All),map_list_to_pairs(path_h,All,K),keysort(K,SK),pairs_values(SK,Q),greedy_open(Q,G,Result).
candidates([],[]). candidates([_-P|T],[P|R]):-candidates(T,R).
path_h([N|_],H):-heuristic(N,H).
% Query: ?- greedy(a,g,Path). Greedy uses h(n), not guaranteed optimal.
