% Practical 2: Arithmetic and recursion
add(A,B,R):-R is A+B.
subtract(A,B,R):-R is A-B.
multiply(A,B,R):-R is A*B.
divide(A,B,R):-B=\=0,R is A/B.
factorial(0,1).
factorial(N,F):-N>0,N1 is N-1,factorial(N1,F1),F is N*F1.
fibonacci(0,0). fibonacci(1,1).
fibonacci(N,F):-N>1,N1 is N-1,N2 is N-2,fibonacci(N1,F1),fibonacci(N2,F2),F is F1+F2.
% Queries: ?- factorial(5,X).  ?- fibonacci(7,X).
