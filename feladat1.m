syms x;
f(x) = exp(-x);
g(x) = -x^2+5;

ax = gca();
ax.XAxisLocation = 'origin';
ax.YAxisLocation = 'origin';
ax.XLim = [-10, 10];
ax.YLim = [-10, 10];
ax.NextPlot = 'Add';
fplot(f);
fplot(g);