% Practical 4: College timetable
class(monday,9,java,sourav_sir,room101).
class(monday,11,ai,rahul_sir,room102).
class(tuesday,9,dbms,amit_sir,room103).
class(wednesday,10,dsa,neha_maam,room104).
find_class(D,T,S,F,R):-class(D,T,S,F,R).
faculty_subject(F,S):-class(_,_,S,F,_).
% Query: ?- find_class(monday,9,S,F,R).
