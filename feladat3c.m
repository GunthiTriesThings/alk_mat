X=[-1,1,2,3]';
Y=[-2,0,-2,2]';
lagrange()

ax = gca();
ax.XAxisLocation = 'origin';
ax.YAxisLocation = 'origin';
ax.XLim = [-10, 10];
ax.YLim = [-10, 10];
ax.NextPlot = 'Add';
fplot(@pol);
plot(1,-3,'*');
plot(0,1,'*');
plot(-1,-5,'*');
plot(-2,-9,'*');