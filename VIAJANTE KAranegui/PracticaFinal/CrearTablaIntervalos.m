function tablaIntervalos= CrearTablaIntervalos(matrizProbabilidades)
    sizeMatrizProbabilidades= size(matrizProbabilidades);
    tablaIntervalos= zeros(sizeMatrizProbabilidades(1),2);
    
    tablaIntervalos(1,2)= tablaIntervalos(1,1) + matrizProbabilidades(1);
    for ruta=2:sizeMatrizProbabilidades(1)
        tablaIntervalos(ruta,1)= tablaIntervalos(ruta-1,2);
        tablaIntervalos(ruta,2)= tablaIntervalos(ruta,1) + matrizProbabilidades(ruta);
    end
end