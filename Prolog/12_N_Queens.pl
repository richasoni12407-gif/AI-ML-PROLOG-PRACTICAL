% Practical 12: N-Queens using backtracking
nqueens(N,S):-range(1,N,R),permutation(R,S),safe(S).
range(N,N,[N]).
range(A,B,[A|R]):-A<B,C is A+1,range(C,B,R).
safe([]).
safe([Q|R]):-safe_queen(Q,R,1),safe(R).
safe_queen(_,[],_).
safe_queen(Q,[Q2|R],D):-Q=\=Q2,abs(Q-Q2)=\=D,D1 is D+1,safe_queen(Q,R,D1).
% Query: ?- nqueens(4,S). One solution: [2,4,1,3].
