function index = findFoodLinear(L, F)
% [index] = findFoodLinear(L, F)
% function takes in "L", a matrix of character arrays
% and "F", a character array, in that specific order
% L is a unsorted list of foods
%function performs linear search for "F" in "L" 
% and returns returns the row index of the match
% If the item is not found, the function returns 0

    index = 0;
    rows = size(L, 1);
    
    for i = 1:rows
        currentRow = L(i, :);
        if(length(F) > size(L, 2))
            continue;
        end
       
        if (strcmp(currentRow(1:length(F)), F) == 1)
            index = i;
            return;
        end
    end
end