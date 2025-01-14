function tf = foodAfterFood(a,b)
% tf = foodAfterFood(a,b)
% Return logical 1 (true) if the character array "a"
% is alphabetically after the character array "b".
% Assumes both "a" and "b" or both lowercase.
% Ex: foodAfterFood('hello','goodbye') will return true.

tf = string(lower(a)) > string(lower(b));
end