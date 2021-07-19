function progenitores= ElegirProgenitoresConReemplazamiento(individuosAlAzar,numeroProgenitores,matrizDistanciaCiudades,funcionAjuste,listaCromosomas)
    sizeIndividuosAlAzar= size(individuosAlAzar);
    progenitores=zeros(numeroProgenitores,sizeIndividuosAlAzar(2));
    
    [matrizFitness,totalFitness]=AsignarFitness(funcionAjuste,individuosAlAzar,matrizDistanciaCiudades);
    matrizProbabilidades= CalcularProbabilidad(matrizFitness,totalFitness);
    tablaIntervalos= CrearTablaIntervalos(matrizProbabilidades);
    for i=1:numeroProgenitores
        numeroAlAzar= rand();
        posicion= BuscarIntervalo(numeroAlAzar,tablaIntervalos);
        progenitores(i,:)=individuosAlAzar(posicion,:);        
    end
end