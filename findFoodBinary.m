function index = findFoodBinary(L, F)
% [index] = findFoodLinear(L, F)
% function takes in "L", a matrix of character arrays
% and "F", a character array, in that specific order
% L is a sorted list of foods
%function performs binary search for "F" in "L" 
% and returns returns the row index of the match
% If the item is not found, the function returns 0
    low = 1;
    high = size(L, 1);  
    
    
    index = 0;

    while low <= high
        mid = floor((low + high) / 2);
        
        foodAtMid = L(mid, :);
        
        lenMid = length(foodAtMid); 
        while lenMid > 0 && foodAtMid(lenMid) == ' '
            lenMid = lenMid - 1; 
        end
        
       
        foodAtMidTrimmed = foodAtMid(1:lenMid);
        
 
        if strcmp(foodAtMidTrimmed, F) == 1
            index = mid;
            return;
        elseif strcmp(foodAtMidTrimmed, F) < 0
            % If food_at_mid_trimmed is lexicographically less than F
            low = mid + 1;
        else
            % If food_at_mid_trimmed is lexicographically greater than F
            high = mid - 1;
        end

    end
    
end