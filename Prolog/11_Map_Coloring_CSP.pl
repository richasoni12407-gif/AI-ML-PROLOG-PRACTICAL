% Practical 11: Map coloring using CSP/backtracking
color(red). color(green). color(blue).
different(X,Y):-X\=Y.
map_coloring(A,B,C,D):-color(A),color(B),color(C),color(D),different(A,B),different(A,C),different(B,C),different(B,D),different(C,D).
% Query: ?- map_coloring(A,B,C,D). CSP = Variables + Domains + Constraints.
