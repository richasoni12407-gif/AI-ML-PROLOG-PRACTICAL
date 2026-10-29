% Practical 1: Knowledge Base
student(sourav).
student(rahul).
enrolled(sourav,java).
enrolled(sourav,ai).
student_course(S,C):-student(S),enrolled(S,C).
% Query: ?- student_course(sourav,X).
