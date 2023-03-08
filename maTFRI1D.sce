function res=maTFRI1D(tab)
    res=conj(maTFR1D(conj(tab)))/size(tab)(2)
endfunction
