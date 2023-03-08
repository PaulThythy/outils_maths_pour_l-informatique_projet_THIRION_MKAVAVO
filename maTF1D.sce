function res = maTF1D(tab)
    res =tab
    N=size(tab)(2);                                                     //récupération de la taille du vecteur D
    for u=1:N                                                           //parcour du vecteur d'arrivé
        res(u)=0;
        for x = 1:N                                                     //parcour du vecteur source
            res(u)= res(u)+ tab(x)*exp((-2*%i*%pi*(u-1)*(x-1))/N);
        end
    end
endfunction
