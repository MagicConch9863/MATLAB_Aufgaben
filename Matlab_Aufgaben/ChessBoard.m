function CheckWinner = ChessBoard(board(row,col))
    
    for i = 1:row
        for j = 1:col
            if sum(board(i,j)) == 3  || sum(board(j,i)) == 3 || sum(board(j,j)) == 3
                CheckWinner = fprintf('Benutzer hat gewonnen! ');
                break
            end
        end
    end

    for i = 1:row
        for j = 1:col
            if sum(board(i,j)) == -3  || sum(board(j,i)) == -3 || sum(board(j,j)) == -3
                CheckWinner = fprintf('Computer hat gewonnen! ');
                break
            end
        end
    end   

    for i = 1:row
        for j = 1:col
            if sum(board(i,j)) ~= -3  && sum(board(j,i)) ~= -3 && sum(board(j,j)) ~= -3 && sum(board(i,j)) ~= 3  && sum(board(j,i)) ~= 3 && sum(board(j,j)) ~= 3
                CheckWinner = fprintf('level the score ');
                break
            end
        end
    end      
        
    
end