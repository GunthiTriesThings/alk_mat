function trapez(f,h)
    v = input('Intervallum (vektor): ');
    n=(v(end)-v(1))/h;
    x=v(1):h:v(end);
    m=f(v(1))+f(v(end));
    for i=2:n   
        m=m+2*f(x(i));
    end
    m=h/2*m;
    fprintf('A közelítő integrál %d részre osztva az intervallumot: %6f\n',n, m)
end