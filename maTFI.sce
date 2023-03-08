function res = maTFI(tab)
    res =tab
    N=size(tab)(2);
    for x=1:N
        res(x)=0;
        for u = 1:N
            res(x)= res(x)+ tab(u)*exp((2*%i*%pi*(x-1)*(u-1))/N)/N;       //division par N pour le coefficient
        end
    end
endfunction
