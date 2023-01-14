function writeTTT(F)   % filename writeTTT.m
%writeTTT This function takes a vector (length of 9) of field-indices
%   of a 3-by-3 TicTacToe-Field as input and prints the field in the
%   command window.
%   A TicTacToe field looks like this:
%    1 | 2 | 3
%   ---+---+---
%    4 | 5 | 6
%   ---+---+---
%    7 | 8 | 9
%
%   The field numbers will be replaced by X (for player) or
%   O (for computer) when the field is selected by one of them.
%   The entries in the field vector should be initilized as their
%   index (1 to 9) an should be replaced in the ongoing game by
%   value 10 for player or 11 for computer
%
%   Example:
%   	field = 1:9
%       inpt = input('choose field 1 to 9') % user selects field
%       field(inpt) = 10                    % update field (player)
%       writeTTT(field)                     % call this function



    clc                 % could be deactivated if not wanted/needed
    
    
    Z = {'1','2','3','4','5','6','7','8','9','X','O'};  % idx 10 for player
                                                        % idx 11 for comp.
    
    fprintf('\n\t   |   |  \n')
    fprintf('\t %1s | %1s | %1s \n',Z{F(1)},Z{F(2)},Z{F(3)})
    fprintf('\t---+---+---\n')
    fprintf('\t %1s | %1s | %1s \n',Z{F(4)},Z{F(5)},Z{F(6)})
    fprintf('\t---+---+---\n')
    fprintf('\t %1s | %1s | %1s \n',Z{F(7)},Z{F(8)},Z{F(9)})
    fprintf('\t   |   |  \n\n')

end