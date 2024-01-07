function lagrange()
% kiegészítés kezdete
disp('Adja meg a pontok koordinátáit, végjel: []')
x = [];
y = [];
p = input('Kérem a pontok koordinátáit [x,y] alakban:');
while length(p) ~= 0
    x = [x;p(1)];
    y = [y;p(2)];
    p = input('Kérem a pontok koordinátáit [x,y] alakban:');
end
%kiegészítés vége
% ez a rész feleslegessé válik így
if length(x)~=length(y)
  fprintf('Rossz vektorokat adott meg!\n')
  return
end
% felesleges rész vége

n=length(x);
for i=1:n
  for j=1:n
    V(i,j)=x(i)^(j-1);
  end
end
    disp('A Vandermonde mátrix:')
    disp(V)
    a=V\y;
    disp('A polinom együtthatói:')
    disp(a)
end
