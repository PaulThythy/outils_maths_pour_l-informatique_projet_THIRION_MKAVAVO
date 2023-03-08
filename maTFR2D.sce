function res=maTFR2D(tab)
        [rows,n]=size(tab)                          
        
        //LIGNES
        for i = 1:rows
            res(i,:) = maTFR1D(tab(i,:))
        end
        
        //Tourne la matrice
        for i = 1:n
            for j = 1:rows
                tabInv(i,j) = res (j,i)
            end
        end
        
        //LIGNE (Anciennes colonnes)
        for i = 1:n
            ret2(i,:) = maTFR1D(tabInv(i,:))
        end
        
        //Tourne la matrice
       for i = 1:rows
            for j = 1:n
                res(i,j) = ret2 (j,i)
            end
        end
endfunction
