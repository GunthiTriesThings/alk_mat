function lagrange()

% Pontok bekérése
x = [];
y = [];
while 1
    v = input('Adjon meg egy pontot vektorként (lezáráshoz üres vektor): ');
    if isempty(v)
        break;
    end
    x = [x, v(1)];
    y = [y, v(end)];
end
% Pontok bekérésének vége

if length(x)~=length(y)
  fprintf('Rossz vektorokat adott meg!\n')
  return
end
n=length(x);
for i=1:n
  for j=1:n
    V(i,j)=x(i)^(j-1);
  end
end
    disp('A Vandermonde mátrix:')
    disp(V)
    y=y';
    a=V\y;
    disp('A polinom együtthatói:')
    disp(a)
end