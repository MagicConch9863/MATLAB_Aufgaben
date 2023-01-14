board = zeros(3,3); % Eine 3*3 Matrix aufzustellen
again = 'Y'; % Wenn der Spieler mehrere Runden spielen will
rund = 1;

while again == 'Y'
    clc;
    % Begrüßen des Spielers
    fprintf('Herzlich Willkommen zum TicTacToe-Spiel \n')
    fprintf('Runde: %d \n',rund);
    board = zeros(3,3);
    % Wer spielt zuerst
    anfang = randi([0,1],1,1);
    if anfang == 0
        %% zufällig aus noch freien Feldern 
        fprintf('Computer beginnt \n');
        random1 = randi([1,3]);
        random2 = randi([1,3]);
        board(random1,random2) = -1;
    else
        fprintf('Spieler beginnt \n');
    end
    %% fprintf Tabelle
    fprintf('\n\t    1 | 2 | 3  \n')
    fprintf('\t 1: %d | %d | %d \n',board(1,1),board(1,2),board(1,3))
    fprintf('\t   ---+---+---\n')
    fprintf('\t 2: %d | %d | %d \n',board(2,1),board(2,2),board(2,3))
    fprintf('\t   ---+---+---\n')
    fprintf('\t 3: %d | %d | %d \n',board(3,1),board(3,2),board(3,3))
    fprintf('\t        \n\n')
    %% Spiel beginnt
    while 1   
    %% Benutzer Angabe
    fprintf('Benutzer spielt \n');
    zeile = input('Bei welcher Zeile wollen Sie einsetzen(1/2/3) : ');
    spalte = input('Bei welcher Spalte wollen Sie einsetzen(1/2/3) : ');

    % bereits belegte Felder nicht akzeptiert werden
    while board(zeile,spalte) ~= 0
        fprintf('Bitte geben Sie eine andere Zahl \n');
        zeile = input('Bei welcher Zeile wollen Sie einsetzen(1/2/3) : ');
        spalte = input('Bei welcher Spalte wollen Sie einsetzen(1/2/3) : ');
        
        if board(zeile,spalte) == 0           
            break
        end
    end

    board(zeile,spalte) = 1;
    
    %% fprintf Tabelle
    fprintf('\n\t    1 | 2 | 3  \n')
    fprintf('\t 1: %d | %d | %d \n',board(1,1),board(1,2),board(1,3))
    fprintf('\t   ---+---+---\n')
    fprintf('\t 2: %d | %d | %d \n',board(2,1),board(2,2),board(2,3))
    fprintf('\t   ---+---+---\n')
    fprintf('\t 3: %d | %d | %d \n',board(3,1),board(3,2),board(3,3))
    fprintf('\t       \n\n')
    %% Auswertung, ob der Benutzer gewonnen hat
    if board(1,1) + board(1,2) + board(1,3) == 3
        msgbox('Der Bunetzer hat gewonnen！', 'chess');
        break
    end
    if board(2,1) + board(2,2) + board(2,3) == 3
        msgbox('Der Bunetzer hat gewonnen！', 'chess');
        break
    end
    if board(3,1) + board(3,2) + board(3,3) == 3
        msgbox('Der Bunetzer hat gewonnen！', 'chess');
        break
    end
    if board(1,1) + board(2,1) + board(3,1) == 3
        msgbox('Der Bunetzer hat gewonnen！', 'chess');
        break
    end
    if board(1,2) + board(2,2) + board(3,2) == 3
        msgbox('Der Bunetzer hat gewonnen！', 'chess');
        break
    end
    if board(1,3) + board(2,3) + board(3,3) == 3
        msgbox('Der Bunetzer hat gewonnen！', 'chess');
        break
    end
    if board(1,1) + board(2,2) + board(3,3) == 3
        msgbox('Der Bunetzer hat gewonnen！', 'chess');
        break
    end
    if board(1,3) + board(2,2) + board(3,1) == 3
        msgbox('Der Bunetzer hat gewonnen！', 'chess');
        break
    end

    %% zufällig aus noch freien Feldern 
     random1 = randi([1,3]);
     random2 = randi([1,3]);
     fprintf('Computer spielt \n');

    while board(random1,random2) ~= 0
         random1 = randi([1,3]);
         random2 = randi([1,3]);       

         if board(random1,random2) == 0           
            break
         else 
             board(random1,random2) = board(random1,random2);
         end
    end

    board(random1,random2) = -1;

    %% fprintf Tabelle
    fprintf('\n\t    1 | 2 | 3  \n')
    fprintf('\t 1: %d | %d | %d \n',board(1,1),board(1,2),board(1,3))
    fprintf('\t   ---+---+---\n')
    fprintf('\t 2: %d | %d | %d \n',board(2,1),board(2,2),board(2,3))
    fprintf('\t   ---+---+---\n')
    fprintf('\t 3: %d | %d | %d \n',board(3,1),board(3,2),board(3,3))
    fprintf('\t        \n\n')

    %% Auswertung, ob der Computer gewonnen hat
    if board(1,1) + board(1,2) + board(1,3) == -3
        msgbox('Computer hat gewonnen！', 'chess');
        break
    end
    if board(2,1) + board(2,2) + board(2,3) == -3
        msgbox('Computer hat gewonnen！', 'chess');
        break
    end
    if board(3,1) + board(3,2) + board(3,3) == -3
        msgbox('Computer hat gewonnen！', 'chess');
        break
    end
    if board(1,1) + board(2,1) + board(3,1) == -3
        msgbox('Computer hat gewonnen！', 'chess');
        break
    end
    if board(1,2) + board(2,2) + board(3,2) == -3
        msgbox('Computer hat gewonnen！', 'chess');
        break
    end
    if board(1,3) + board(2,3) + board(3,3) == -3
        msgbox('Computer hat gewonnen！', 'chess');
        break
    end
    if board(1,1) + board(2,2) + board(3,3) == -3
        msgbox('Computer hat gewonnen！', 'chess');
        break
    end
    if board(1,3) + board(2,2) + board(3,1) == -3
        msgbox('Computer hat gewonnen！', 'chess');
        break
    end
    
    %% Wenn Niemand gewonnen hat
    if all(board ~= 0)
        msgbox('Niemand hat gewonnen！', 'chess');
        break        
    end
    
    end

    %% Ob noch eine Runde spielen
    Runde = "Wollen Sie noch eine Runde spielen? Y/N : ";
    again = input(Runde,"s");
    rund = rund +1;
    
    while again ~= 'Y'
        fprintf('Bye~~ \n');
        break
    end

end





