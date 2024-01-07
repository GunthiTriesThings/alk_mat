syms x;
f(x) = (log(x+3))^2;
g(x) = -x^2+5;

ax = gca();
ax.XAxisLocation = 'Origin';
ax.YAxisLocation = 'Origin';
ax.XLim = [-10, 10];
ax.YLim = [-10, 10];
ax.NextPlot = 'add'
fplot(f)
fplot(g)
