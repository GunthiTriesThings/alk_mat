function hur(f,a,b,t)
% kieg�sz�t�s kezdete
if f(a)==0 
        fprintf('Az intervallum els� v�gpontja megold�s! (%6f)\n',a)
        return
    end
    if f(b)==0 
        fprintf('Az intervallum m�sodik v�gpontja megold�s! (%6f)\n',b)
        return
    end
% kieg�sz�t�s v�ge
l=0;
c=a-f(a)*(a-b)/(f(a)-f(b));
while abs(f(c))>t && l < 100
     c=a-f(a)*(a-b)/(f(a)-f(b));
     if f(a)*f(c) < 0
        b=c;
     elseif f(b)*f(c) < 0
        a=c;
     else
        fprintf('%d l�p�sben a pontos gy�k: %6f\n',l,c)
        return
        end
     l=l+1;
     fprintf('%d l�p�sben a k�zel�t� gy�k: %6f\n',l,c)
 end  
end
