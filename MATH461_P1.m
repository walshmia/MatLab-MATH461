% It is not acceptable to only turn in the code without the outputs.
%% Problem 1
A = [1 -1 1 -10 ; 3 -6 5 -27 ; -1 16 -15 43] % Augmented matrix A
A(3, :) = A(3, :) + A(1, :)
A(2, :) = A(2, :) - 3*A(1, :)
A(3, :) = A(3, :) + 5*A(2, :) % REF

A(2, :) = 2*A(2, :) + A(3, :)
A(1, :) = 4*A(1, :) + A(3, :)
A(3, :) = (-1/4)*A(3, :)
A(2, :) = (-1/6)*A(2, :)
A(1, :) = A(1, :) + 4*A(2, :)
A(1, :) = (1/4)*A(1, :) % RREF

% Solution
x1 = -7
x2 = -9
x3 = -13
%% Problem 2

B = [1 -2 0 5 1 7 ; -4 5 6 -25 -1 -21 ; 2 -22 36 -22 26 60; -1 2 0 -11 17 5]

B(2, :) = 4*B(1, :) + B(2, :)
B(3, :) = 2*B(1, :) - B(3, :)
B(4, :) = B(1, :) + B(4, :)
B(3, :) = 6*B(2, :) + B(3, :)
B(4, :) = 3*B(3, :) + B(4, :) % REF

B(3, :) = (1/2)*B(3, :)
B(2, :) = B(2, :) + 5*B(3, :)
B(1, :) = B(1, :) - 5*B(3, :)
B(2, :) = (-1/3)*B(2, :)
B(1, :) = B(1, :) + 2*B(2, :) %RREF

B = [1 -2 0 5 1 7 ; -4 5 6 -25 -1 -21 ; 2 -22 36 -22 26 60; -1 2 0 -11 17 5]
rref(B) % Same answer using rref command

syms x3 x5
[19 ; 1 ; 0 ; -2 ; 0] + x3*[4 ; 2 ; 1 ; 0 ; 0] + x5*[-24 ; -4 ; 0 ; 3 ; 1]
%% Problem 3
format short
A = [5 5 -7 0 ; -2 6 -5 -5 ; -6 -2 -2 1]
rref(A) % RREF

% Solution in decimals
x1 = 0.3962
x2 = -1.1500
x3 = -0.5385

format rational
rref(A) % RREF

% Solution in fractions
x1 = 103/260
x2 = -23/20
x3 = -7/13
%% Problem 4
format short
A = [270 51 70 400 ; 10 5.4 15 30 ; 2 5.2 0 10]
rref(A) % RREF
% Solution
macAndCheese = 0.9858
broccoli = 1.5439
chicken = 0.7870

B = [260 51 70 400 ; 9 5.4 15 30 ; 5 5.2 0 10]
rref(B) % RREF
% Solution
shells = 1.0890
broccoli = 0.8760
chicken = 1.0313

%% Problem 5
A = [3.9 7.3 2.9 ; 1.7 2.9 1.7 ; 2.7 5.9 0.7]
rref(A) % RREF is consistent, therefore the given vector is in the span

% The three vectors are lineraly dependent because there is not a
% pivot in every column
%% Problem 6
syms a b
A = [1 -4 a ; 7 -3 b]
rref(A)
w1 = (4*b)/25 - (3*a)/25
w2 = b/25 - (7*a)/25
%% Problem 7
A = [-3 0 -8 -20 2 ; 6 3 7 25 -2 ; 5 9 2 4 -7 ; 7 -1 -3 27 -9]
rref(A) % RREF

% Since there is a free variable in the RREF, the matrix is linearly
% dependent.

% Solutions 
disp('x1 + 4*x4 = 0')
disp('x2 - 2*x4 = 0')
disp('x3 + x4 = 0')
disp('x5 = 0')
% Suppose x4 = 1, then
disp('x1 = -4, x2 = 2, x3 = -1, x4 = 1, x5 = 0')
% Therefore the linear combination is...
disp('-4x1 + 2x2 -3x3 + x4 = 0')

% The set must be lineraly dependent because there in the situtation that
% there are p vectors in R^n space, p > n and therefore the set is
% linearly dependent.

% The set does span R^4 because there is a pivot in every row in the RREF.
