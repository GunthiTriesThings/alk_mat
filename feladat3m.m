lagrange()
disp('A polinom együtthatói: 1; 3; -5;-2')
syms x;
f(x) = 1 + 3*x - 5*x.^2 - 2*x.^3;
x = [1,0,-1,-2];
y = [-3,1,-5,-9];
x1 = -10:0.01:10;
y1 = f(x1);
plot(x1,y1,x,y,'*')
ax = gca();
ax.XAxisLocation = 'Origin';
ax.YAxisLocation = 'Origin';
ax.XLim = [-10, 10];
ax.YLim = [-10, 10];
