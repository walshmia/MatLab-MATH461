%% Problem 1
v1 = [-6 ; 4; -9 ; 4]
v2 = [8 ; -3 ; 7 ; -3]
v3 = [-9 ; 5 ; -8 ; 3]
B = [-6 8 -9 ; 4 -3 5 ; -9 7 -8 ; 4 -3 3]
x = [4 ; 7 ; -8 ; 3]

rref(B) % B is a basis for the vector space H because it spans H and
% has a pivot in every column so the vectors are linearly independent.

Bx = [-6 8 -9 4 ; 4 -3 5 7 ; -9 7 -8 -8 ; 4 -3 3 3]
rref(Bx) % x is in H because it can be written as a linear combination
% of the given vectors

Bcord = [3 ; 5 ; 2]

%% Problem 2
format short

% a
A = [1 1 1 1 ; 1 cos(0.1) (cos(0.1))^2 (cos(0.1))^3 ; 
    1 cos(0.2) (cos(0.2))^2 (cos(0.2))^3 ; 1 cos(0.3) (cos(0.3))^2 (cos(0.3))^3]

% b
rref(A)
det(A)

% c 
% A is invertible because the rref has a pivot in every row and column.
% Also, the determinant is not zero which implies invertibility. 

% d
A = [1 1 1 1 ; 1 cos(0.2) (cos(0.2))^2 (cos(0.2))^3 ; 
    1 cos(0.5) (cos(0.5))^2 (cos(0.5))^3 ; 1 cos(1) (cos(1))^2 (cos(1))^3]
det(A) % A lot larger

% e
% The set {1, sin^2(t), cos^2(t)} is linearly dependent because 
% sin^2(t) + cos^2(t) = 1

%% Problem 3

% a
% Write each C vector in B coordinates
set_1 = [1 ; 0 ; 0 ; 0 ; 0 ; 0 ; 0]
set_cost = [0 ; 1 ; 0 ; 0 ; 0 ; 0 ; 0]
set_cos2 = [-1 ; 0 ; 2 ; 0 ; 0 ; 0 ; 0]
set_cos3 = [0 ; -3 ; 0 ; 4 ; 0 ; 0 ; 0]
set_cos4 = [1 ; 0 ; -8 ; 0 ; 8 ; 0 ; 0]
set_cos5 = [0 ; 5 ; 0 ; -20 ; 0 ; 16 ; 0]
set_cos6 = [-1 ; 0 ; 18 ; 0 ; -48 ; 0 ; 32]
% C is a linearly independent set in H because each vector in C can be
% written as a linear combination of the vectors in basis B

% b
% C is a basis for H because it is linearly independent and since C spans
% B, it also spans H.

%% Problem 4
format rat
A = [-2 4 1 8 2 ; 1 1 4 11 11 ; 1 -1 1 1 3 ; -2 6 4 18 10]

% a
rank(A)

% b
n = 5
dimNulA = n - rank(A)
dimColA = rank(A)
dimRowA = rank(A)

% c
A
rref(A)
disp('B_NulA = {[-5/2 ; -3/2 ; 1 ; 0 ; 0], [-6 ; -5 ; 0 ; 1 ; 0], [-7 ; -4 ; 0 ; 0 ; 1]}')
disp('B_ColA = {[-2 ; 1 ; 1 ; -2], [4 ; 1 ; -1 ; 6]}')
disp('B_RowA = {[1 ; 0 ; 5/2 ; 6 ; 7], [0 ; 1 ; 3/2 ; 5 ; 4]}')

%% Problem 5
syms t

% a
v1 = [-3 5 1 8]
v2 = [1 1 2 3]
v3 = [2 1 -1 1]
v4 = [4 3 3 7]
v5 = [5 3 0 5]

% b
A = [v1' v2' v3' v4' v5']
rref(A)
disp('B_ColA = {v1, v2, v3}')

% c
disp('W = [(-3+5t+t^2+8*t^3) ; (1+t+2*t^2+3*t^3) ; (2+t-t^2+t^3)]')
dimW = 3

% d
% dimW = 3 while dimP3 = 4, so therefore, W is not equal to P3

%% Problem 6

% a
v1 = [2 1 2 -2 3 -12]
v2 = [-2 2 4 -1 5 0]
v3 = [1 2 4 2 -2 -3]
v4 = [2 0 0 1 -3 -4]

% b 
A = [v1' v2' v3' v4']
if rank(A) == 4
    disp('v1 through v4 is lineraly independent')
else 
    disp('v1 through v4 is linearly dependent')
end

% c
A
rref(A)
A1 = [2 1 2 ; -2 3 -12]
A2 = [-2 2 4 ; -1 5 0]
A3 = [1 2 4 ; 2 -2 -3]
A4 = [2 0 0 ; 1 -3 -4]

A4 = (2/9)*A1 + (-5/9)*A2 + (4/9)*A3