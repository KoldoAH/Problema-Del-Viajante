function listaCromosomas= CrearRutas(tamanioMatriz, numeroIndividuosPoblacion)    
    listaCromosomas= zeros(numeroIndividuosPoblacion, tamanioMatriz);
    for individuo= 1:numeroIndividuosPoblacion
        listaCromosomas(individuo,:)= randperm(tamanioMatriz);
    end  
end