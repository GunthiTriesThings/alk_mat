function newton(f,df,a,t)
    if f(a)==0 || abs(f(a))<t
        fprintf('A kezdőpont megoldás!\n');
        return;
    end
    l=1;
    while abs(f(a))>=t && l < 100
    if df(a) == 0
        fprintf('Nem található megoldás, az érintő párhuzamos az x tengellyel!\n')
        return
    end
    a=a-f(a)/df(a);
    fprintf('%d. lépés után a közelítő megoldás: %6f\n',l,a)
    l=l+1;
    end
    retry = input("Szeretnél új kezdőpontot megadni? (y/N) ", "s");
    if strcmpi(retry,"y")
        a=input('Kérem a kezdőpontot: ');
        newton(f,df,a,t);
    end
end