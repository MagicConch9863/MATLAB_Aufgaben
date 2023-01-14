figure(1);
set(gcf,'color','red');
hold on;
axis off;

ecc = axes2ecc(18,4);% 根据长半轴和短半轴计算椭圆偏心率
[elat,elon] = ellipse1(2,5,[9 ecc],92);
p = elon< 2.2;
elat(p) = NaN;
[elat1,elon2] = ellipse1(6,5,[9 ecc],88);
q = elon2 < 2.2;
elat1(q) = NaN;

% ecc = axes2ecc(18,4.12);% 根据长半轴和短半轴计算椭圆偏心率
% [elat,elon] = ellipse1(2,5,[9 ecc],88);
% p = elon< 2.2;
% elat(p) = NaN;
% [elat1,elon2] = ellipse1(6.05,5,[9 ecc],92);
% q = elon2 < 2.3;
% elat1(q) = NaN;

plot(elat,elon,'-y','Linewidth', 18);
hold on;
plot(elat1,elon2,'-y','Linewidth', 18);
xlabel('x');
ylabel('y');
xlim([-7 15]);
ylim([-3 19]);
title(['Zeichung McDonald s - Logo'])
