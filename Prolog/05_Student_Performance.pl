% Practical 5: Student performance classification
marks(sourav,90). marks(rahul,75). marks(aman,55). marks(rohit,35).
performance(S,topper):-marks(S,M),M>=80.
performance(S,average):-marks(S,M),M>=40,M<80.
performance(S,fail):-marks(S,M),M<40.
% Query: ?- performance(sourav,Result).
