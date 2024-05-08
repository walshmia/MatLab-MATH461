%% Problem 1
format rat

% a
P = [1 1 2 4 ; 0 2 -1 -1 ; 0 0 3 0 ; 0 0 0 1]
Q = [1 2 0 0 ; 3 1 3 3 ; 0 0 -1 0 ; 1 0 4 0]

% b
R = Q*P

% c
C_t_cubed = inv(R)*[0 ; 0 ; 0 ; 1]

% d
C_polynomial = R*[0 ; 1 ; 2 ; 3]

% e
syms t
pt = [1 1+2*t 2-t+3*t^2 4-t+t^3]*[0 ; 1 ; 2 ; 3]

%% Problem 2
format short

A = [0 3 6 ; 1 4 7 ; 2 5 8]

% a
eig(A)

% b
    % i
    B = A
    B([2,3], :) = A([3,2], :)
    eigenvalues_B = eig(B)

    % ii
    C = A
    C(2, :) = 2*A(2, :)
    eigenvalues_C = eig(C)

    % iii
    D = A
    D(1, :) = (-3)*A(3, :) + A(1, :)
    eigenvalues_D = eig(D)

% c
determinant_A = det(A)
% Elementary row operations do change eigenvalues, but it would not change
% the determinant and since det(A) = 0, zero must also be a consistent
% eigenvalue.

%% Problem 3
format short

A = [7 -16 -6 ; 6 -31 -9 ; -14 86 24]

% a
[P,D] = eig(A)

% b
P*D*inv(P) % A equals PDP^-1

% c
% The eigenvalues are 3, -1, and -2 with eigenvectors [-0.8321 ; 0 ;
% -0.5547], [-0.2357 ; 0.2357 ; -0.9428], and [-0.1728 ; 0.2592 ; -0.9503]
% respectively.

%% Problem 4
format short

A = [3 1 ; 0 3]

% a
[P,D] = eig(A)

% b
P*D*inv(P) % A does NOT equal PDP^-1

% c
A - 3*eye(2)
basis = [1 ; 0]

% d
% There is NOT a basis consisting of both eigenvectors because the
% eigenvectors are multiples of eachother, and therefore linearly 
% dependent. This explains why A does not equal PDP^-1, A is not
% diagnolizable because we cannot find two linearly independent
% eigenvectors.

%% Problem 5
format short

A = [3 1 3 ; 5 2 0 ; 0 1 2 ; -1 -1 3]

% a
dot_1_2 = dot([3 ; 5 ; 0 ; -1], [1 ; 2 ; 1 ; -1])
dot_3_3 = dot([3 ; 0 ; 2 ; 3], [3 ; 0 ; 2 ; 3])

% b
matrix_prod = transpose(A)*A

% c
% The dot products are the corresponding entries of the matrix product. The
% dot product of columns 1 and 2 is entry 1,2 in the matrix product and the
% dot product of columns 3 and 3 is entry 3,3.

% d
% The general relationship is that when you take a dot product of two
% columns in a matrix, it will correspond to that entry in the product of
% the matrix and its transpose.

% e
matrix_prod
dot_3_1 = dot([3 ; 0 ; 2 ; 3], [3 ; 5 ; 0 ; -1])
dot_2_2 = dot([1 ; 2 ; 1 ; -1], [1 ; 2 ; 1 ; -1])

% f
Q = [1/sqrt(14) 1/sqrt(3) 5/sqrt(42) ; 2/sqrt(14) 1/sqrt(3) -4/sqrt(42) ;
    3/sqrt(14) -1/sqrt(3) 1/sqrt(42)]

transpose(Q)*Q

% g
% The columns of Q from an orthonormal set because the magnitude of each
% vector is 1. The computation above shows this because the transpose of Q
% multiplied by Q gives the dot products of every combination of columns.
% The diagnol of all 1's indicates that the dot product of each column with
% itself is 1 and therefore, the magnitude is the square root of the dot
% product, which is also 1.

% h
% The rows of Q also form an orthonormal set because the dot product of any
% pair of columns of Q is the same as the dot product of the corresponsing
% pair of rows of the transpose of Q. Therefore, if the columns of Q form
% an orthonormal set, the rows of Q also form one.