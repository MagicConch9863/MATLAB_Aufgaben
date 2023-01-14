clc;
close;
clear;
% Um Fehler bei legend zu vermeiden, nutze ich hier opengl software
% Da manchmal die Funktionslinie in Legend nicht gezeichnet werden kann
opengl software

name = 'Runqi Dong';

% Definieren zwei Parameter a und b für Ellipse 
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

% zweiten Zeilenvektor y definieren   
y = linspace(-6,6,10);

% x und y werden zusammen in einer Matrix durch meshgrid gesprichert
[X,Y] = meshgrid(x,y);

% Areasinus Hyperbolicus Z aus [X,Y] erstellen
Z = asinh(X.* Y);

% 75 äquidustabten Werte zwischen 0 und 2*pi erstellen
t = linspace(0,2*pi,75);

% Eine Ellipse erstellen
xt1 = a*cos(t);
yt1 = b*sin(t);

% Eine Kardioide erstellen
xt2 = 2 * (1-cos(t)).* cos(t);
yt2 = 2 * (1-cos(t)).* sin(t);

%% Gleichung von Spirale und Kreis
% Eine Spirale erstellen
% xt2 = (log(2*t+1) + 1).*cos(t);
% yt2 = (log(2*t+1) + 1).*sin(t);

% Einen Kreis erstellen
% xt2 = 2*cos(t);
% yt2 = 2*sin(t);

%% Areasinus Hyperbolicus z aus unterschiedlichen Inputdaten x und y herleiten
% xt1 und yt1 beschreiben eine Ellipse
zt1 = asinh(xt1.* yt1);
% xt2 und yt2 beschreiben eine Kardioide
zt2 = asinh(xt2.* yt2);

Kurven(1).xt = xt1;
Kurven(1).yt = yt1;

Kurven(2).xt = xt2;
Kurven(2).yt = yt2;

%% Areasinus Hyperbolicus Funktion darzustellen
% Ein Diagramm mit 3 Subplot erstellen
% Ellipse und Kardioide in einem Subplot plotten
subplot(3,1,[1,2]); 
% asinh(x*y) wird gezeichnet
surf(X,Y,Z);
hold on;
colormap bone;
shading flat;
%shading interp;
subplot(3,1,[1,2]);
% Ellipse und Kardioide werden zusammen mit asinh(x*y) in einer Figur
% gezeichnet
plot3(t,xt1,yt1,t,xt2,yt2);
title("Areasinus Hyperbolicus");
xlabel("x");ylabel("y");zlabel("z");

view([-131 73]);
legend('asinh(x*y)','Ellipse','Kardioide', 'Location','northwest');

%% Ellipse und Kardioide in 2D plotten
% 2D-Figur wird am untersten Subplot gezeichnet
subplot(3,1,3);
plot(t,zt1,'-r',t,zt2,'-b*');
grid("on");
title("Schnittkurven");
xlabel("t in rad");
ylabel("y");
legend('zt1 Ellipse','zt2 Kardioide');

%% Daten aus Struktur ausgeben
fprintf('\nKurve 1 - Ellipse: ');
fprintf('\n    xt\t      yt\t     zt  \n');
% Erste 10 Werte von Ellipse ausgeben
for i = 1:10
    fprintf('%+4.3f\t  %+4.3f\t %+4.3f\t \n', Kurven(1).xt(i), Kurven(1).yt(i),zt1(i));
end













