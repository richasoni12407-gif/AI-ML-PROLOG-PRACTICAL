% Practical 3: List operations
append_list([],L,L).
append_list([H|T],L,[H|R]):-append_list(T,L,R).
member_element(X,[X|_]).
member_element(X,[_|T]):-member_element(X,T).
list_length([],0).
list_length([_|T],N):-list_length(T,N1),N is N1+1.
reverse_list([],[]).
reverse_list([H|T],R):-reverse_list(T,RT),append_list(RT,[H],R).
% Queries: append_list([1,2],[3,4],X). list_length([a,b,c],N).
