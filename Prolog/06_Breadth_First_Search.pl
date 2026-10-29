% Practical 6: Breadth-First Search
edge(a,b). edge(a,c). edge(b,d). edge(b,e). edge(c,f). edge(d,g). edge(e,g). edge(f,g).
bfs(S,G,P):-bfs_queue([[S]],G,R),reverse(R,P).
bfs_queue([[G|R]|_],G,[G|R]).
bfs_queue([[C|R]|Other],G,Result):-findall([N,C|R],(edge(C,N),\+member(N,[C|R])),New),append(Other,New,Q),bfs_queue(Q,G,Result).
% Query: ?- bfs(a,g,Path). BFS uses a FIFO queue, level by level.
