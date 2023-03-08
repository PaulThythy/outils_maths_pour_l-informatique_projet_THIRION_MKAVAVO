function res=maTFR1D(tab)
    [rows,N]=size(tab)                                  //n doit être une puissance de 2 (vectueur colonne avec une seule ligne car on est en 1D)
    if N<=1 then
        res = tab                                       //si taille tableau=1, retourne tab
    else
        Wn=exp((-2*%pi*%i)/N)                           
        W=1
                
        impair=tab(2:2:N)                               //commence à l'indice 2, pas de 2, jusqu'à n
        pair=tab(1:2:(N-1))                             //commence à l'indice 1, pas de 2, jusqu'à n-1
                
        ypair=maTFR1D(pair)                             //récursion afin de séparer les tableaux
        yimpair=maTFR1D(impair)
                
        for u=1:(N/2)
            res(1,u)=ypair(u)+yimpair(u)*W
            res(1,u+(N/2))=ypair(u)-yimpair(u)*W
            W=W*Wn
        end
    end
endfunction
