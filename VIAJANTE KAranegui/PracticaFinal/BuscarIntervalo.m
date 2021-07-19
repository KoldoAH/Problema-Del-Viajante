function posicion= BuscarIntervalo(numeroElegido,tablaIntervalos)
    sizeTablaIntervalos= size(tablaIntervalos);
    posicion=1;
    while numeroElegido>tablaIntervalos(posicion,2)
        posicion=posicion+1;
    end

end