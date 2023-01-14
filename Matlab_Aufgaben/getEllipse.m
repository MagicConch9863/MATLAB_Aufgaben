% x = a*cos(t) + x_m     y = b*sin(t) + y_m
function [x,y] = getEllipse(a, b, x_m, y_m, alpha, beta)

    t = alpha:0.05*pi:beta;

    x = a*cos(t) + x_m;
    y = b*sin(t) + y_m;
   

%     plot(x,y,'y','Linewidth', 16);
    
end