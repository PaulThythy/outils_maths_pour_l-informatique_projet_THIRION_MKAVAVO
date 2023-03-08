function res=maTFRI2D(tab)
        [rows,n]=size(tab)
        
        //LIGNES
        for i = 1:rows
            //ret(i,:) = maTFRI1D(tab(i,:))
            res(i,:) = conj(maTFR1D(conj(tab(i,:))))/size(tab)(2)
        end
        
        //Tourne la matrice
        for i = 1:n
            for j = 1:rows
                tabInv(i,j) = res (j,i)
            end
        end
        
        //LIGNE (Anciennes colonnes)
        for i = 1:n
            //ret2(i,:) = maTFRI1D(tabInv(i,:))
            ret2(i,:) = conj(maTFR1D(conj(tabInv(i,:))))/size(tabInv)(2)
        end
        
        //Tourne la matrice
       for i = 1:rows
            for j = 1:n
                res(i,j) = ret2 (j,i)
            end
        end
        
        //res = real(res);
endfunction
