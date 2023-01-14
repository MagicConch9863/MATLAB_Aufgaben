figure(1);
set(gcf,'color','red');
hold on;
axis off;

% zwei Ellipse erstellen
[x1,y1] = getEllipse(2,9,1,5,0,8);
[x2,y2] = getEllipse(2,9,5,5,0,8);

% Wir brauchen nur zwei halbe Ellipsen (Oberseite)
p = y1 < 2.5; % kleiner als 0.5 * y_m
y1(p) = NaN;
q = y2 < 2.5;
y2(q) = NaN;

% Mittlerer Bein soll bisschen kürzer als außerer
i = find(y1 < 5 & x1 > 2);
y1(i) = NaN;

j = find(y2 < 5 & x2 < 5);
y2(j) = NaN;

% Plotten beride Ellipse in einem Plot
plot(x1,y1,'y','Linewidth', 18);
plot(x2,y2,'y','Linewidth', 18);

xlim([-6 12]);
ylim([0 18]);
%title('Zeichung McDonald s - Logo')

