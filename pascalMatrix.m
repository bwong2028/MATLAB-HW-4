function matrix = pascalMatrix(n)
%[matrix] = pascalMatrix(n)
%this function creates a lower triangular 
%matrix which contains the pascal triangle
%values in the lower left half of the matrix.
%the function takes in the maximum row, "n", 
% which must be a positive integer
% function returns a matrix (a type of vector)

    if n == 0
        matrix = 1;
    else
        prevMatrix = pascalMatrix(n - 1);
       
        matrix = zeros(n + 1, n + 1);
        
        matrix(1:n, 1:n) = prevMatrix;
        
        matrix(n + 1, 1) = 1;
        matrix(n + 1, n + 1) = 1;
        
        for col = 2:n
            matrix(n + 1, col) = matrix(n, col - 1) + matrix(n, col);
        end
    end
end