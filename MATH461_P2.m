%% Problem 1
% a
format short
A = [cos(pi/8) -sin(pi/8) ; sin(pi/8) cos(pi/8)]
v = [3 ; 5]
A*v 

% b
B = [cos(pi/9) -sin(pi/9) ; sin(pi/9) cos(pi/9)]
ab = A*B 
ba = B*A % AB does equal BA

% c
aFirst = B*(A*v) 
bFirst= A*(B*v)
% It does not matter which rotation is applied first since AB = BA.

% d
C = A*B
t = acos(C(1, 1))
format rat
t/pi 

% e
format short
inv(A)
A = [cos(-pi/8) -sin(-pi/8) ; sin(-pi/8) cos(-pi/8)] 

% f
Rtheta = [cos(pi/8) -sin(pi/8) ; sin(pi/8) cos(pi/8)]
L = [1 0 ; 0 -1]
R2 = inv(Rtheta)
Ltheta = Rtheta*L*R2

% g
Ltheta*L
L*Ltheta
% These computations do not equal each other

% h 
U = Ltheta*L
u = acos(L(1, 1))
format rat
u/pi

%% Problem 2
format rat
A = [8 9 6 ; 2 8 1 ; 4 9 8]

% a
M = [A eye(3)]
rref(M)
Ainverse = [55/248 -9/124 -39/248 ; -3/62 5/31 1/62 ; -7/124 -9/62 23/124]

% b
inv(A)

%% Problem 3
format rat
A = [3 0 0 0 ; 13 -1 0 0 ; 3 7 -2 0 ; -1 5 14 -1]
B = [3 0 -1 3 ; 2 2 0 2 ; 2 -1 -1 0 ; 2 2 -1 3]

% a
det(A)
det(B)

% b
% Since many zeros appear in the above matrices, we can take the
% determinants along rows and columns that have the most zeros.

% c
C = A*B
det(C)

% d
% Since C is the product of A and B, the determinant of C can be found by
% mulitplying the determinants of A and B.

%% Problem 4
format rat
A = [-1 6 5 5 ; 3 0 6 5 ; 2 3 6 0 ; 6 3 1 0]

% a
det(A)

% b
% i. -1380
% ii. 345
% iii. 1380

% c
B = A
B([1,3], :) = B([3,1], :)

C = A
C(4, :) = (1/4)*C(4, :)

D = A
D(4, :) = 6*D(1, :) + D(4, :)

% d
det(B)
det(C)
det(D)

%% Problem 5
% a
syms a b c d
A = [a b ; c d]

% b 
inv(A)

% c
syms e f g h i
B = [a b c ; d e f; g h i]
inv(B)

% d
det(B)*B