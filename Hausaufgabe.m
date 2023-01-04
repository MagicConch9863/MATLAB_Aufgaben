clc;
close;
clear;

name = 'Runqi Dong';

a = 5;
b = 3;
% Benutzer definiert eine Schrittweit und es darf nur im Intervall 
% [0.5,3] liegen
schrittWeite = input('Geben Sie bitte erwünschte Schrittweite an : ');
while schrittWeite > 3 || schrittWeite < 0.5
    fprintf('\n Geben Sie bitte Schrittweite zwischen 0.5 bis 3 \n');
    schrittWeite = input('Geben Sie bitte erwünschte Schrittweite an : ');

    if schrittWeite >= 0.5 && schrittWeite <= 3
        break
    end
end

% einen Zeilenvektor x erstellen
x = -6:schrittWeite:6;

% zweiten Zeilenvektor definieren   y
y = linspace(-6,6,10);

[X,Y] = meshgrid(x,y);

% Areasinus Hyperbolicus Z aus [X,Y] erstellen
Z = asinh(X.* Y);

t = linspace(0,2*pi,75);

% Eine Ellipse erstellen
xt1 = a*cos(t);
yt1 = b*sin(t);

% Eine Kardioide erstellen
xt2 = 2 * (1-cos(t)).* cos(t);
yt2 = 2 * (1-cos(t)).* sin(t);

% Eine Spirale erstellen
% xt2 = (log(2*t+1) + 1).*cos(t);
% yt2 = (log(2*t+1) + 1).*sin(t);

% Einen Kreis erstellen
% xt2 = 2*cos(t);
% yt2 = 2*sin(t);

zt1 = asinh(xt1.* yt1);
zt2 = asinh(xt2.* yt2);

Kurven(1).xt = xt1;
Kurven(1).yt = yt1;

Kurven(2).xt = xt2;
Kurven(2).yt = yt2;

%% 来，小亮给他整个活
% [numRows,numCols] = size(X);
% 
% %% Plot in  gradual change
% for i = 1:numRows
%     for j =1:numCols
%         C(i,j,1) = Z(i, j)/(max(max(Z))-min(min(Z))) + abs(min(min(Z)))/(max(max(Z))-min(min(Z)));
%         C(i,j,2) = 0;
%         C(i,j,3) = 0;
%     end
% end
% 
% subplot(3,2,1);
% surf(X,Y,Z,C);
% view([-137 60]);
% %  shading interp;
% shading flat;
% title("Areasinus Hyperbolicus")
% xlabel("x")
% ylabel("y")
% subplot(3,2,2);
% plot3(X,Y,Z);
% colormap pink;
% view([-137 60]);
% title("Areasinus Hyperbolicus")
% xlabel("x")
% ylabel("y")
% 
% %% Plot in bunt
% for i = 1:numRows
%     for j =1:numCols
%         C(i,j,1) = rand(1);
%         C(i,j,2) = rand(1);
%         C(i,j,3) = rand(1);
%     end
% end
% 
% subplot(3,2,3);
% surf(X,Y,Z,C);
% shading flat;
% %shading interp;
% view([-116 71]);
% title("Areasinus Hyperbolicus")
% xlabel("x")
% ylabel("y")
% 
% subplot(3,2,4);
% surf(X,Y,Z);
% colormap bone;
% shading flat;
% %shading interp;
% view([-131 73]);
% title("Areasinus Hyperbolicus")
% xlabel("x")
% ylabel("y")

%% Plot von zt
subplot(3,2,[5,6]);
plot(t,zt1,'-r',t,zt2,'-b*');
%legend('zt1 Ellipse','zt2 Kardioide');
legend({'$\rm zt1 Ellipse$', '$${\rm zt2 Kardioide}$$'}, 'interpreter', 'latex', 'FontSize', 8, 'box', 'off')
%title("Schnittkurven");
%xlabel("t in rad");
%ylabel("y");

title({'$$Schnittkurven$$'}, 'interpreter', 'latex', 'FontSize', 10);
ylabel({'$$y$$'}, 'interpreter', 'latex', 'Fontsize', 10);
xlabel({'$t in rad$'}, 'interpreter', 'latex', 'FontSize', 10);

%% Areasinus Hyperbolicus Funktion darzustellen
% Ein Diagramm mit 3 Subplot erstellen
% Ellipse und Kardioide in einem Subplot plotten
subplot(3,1,[1,2]); 
surf(X,Y,Z);
hold on;
colormap bone;
shading flat;
%shading interp;
subplot(3,1,[1,2]);
plot3(t,xt1,yt1,t,xt2,yt2);
title("Areasinus Hyperbolicus");
xlabel("x");ylabel("y");zlabel("z");

view([-131 73]);
legend('asinh(x*y)','Ellipse','Kardioide', 'Location','northwest');

subplot(3,1,3);
plot(t,zt1,'-r',t,zt2,'-b*');
% title("Schnittkurven");
% xlabel("t in rad");
% ylabel("y");
title({'$$Schnittkurven$$'}, 'interpreter', 'latex', 'FontSize', 10);
ylabel({'$$y$$'}, 'interpreter', 'latex', 'Fontsize', 10);
xlabel({'$t \ in \, rad$'}, 'interpreter', 'latex', 'FontSize', 10);
legend('zt1 Ellipse','zt2 Kardioide');


%% Daten aus Struktur ausgeben
fprintf('\nKurve 1 - Ellipse: ');
fprintf('\n    xt\t      yt\t     zt  \n');

for i = 1:10
    fprintf('%+4.3f\t  %+4.3f\t %+4.3f\t \n', Kurven(1).xt(i), Kurven(1).yt(i),zt1(i));
end













