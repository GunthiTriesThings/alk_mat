function lagrange()
% kieg�sz�t�s kezdete
disp('Adja meg a pontok koordin�t�it, v�gjel: []')
x = [];
y = [];
p = input('K�rem a pontok koordin�t�it [x,y] alakban:');
while length(p) ~= 0
    x = [x;p(1)];
    y = [y;p(2)];
    p = input('K�rem a pontok koordin�t�it [x,y] alakban:');
end
%kieg�sz�t�s v�ge
% ez a r�sz feleslegess� v�lik �gy
if length(x)~=length(y)
  fprintf('Rossz vektorokat adott meg!\n')
  return
end
% felesleges r�sz v�ge

n=length(x);
for i=1:n
  for j=1:n
    V(i,j)=x(i)^(j-1);
  end
end
    disp('A Vandermonde m�trix:')
    disp(V)
    a=V\y;
    disp('A polinom egy�tthat�i:')
    disp(a)
end
