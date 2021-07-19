function progenitores= ElegirProgenitoresSinReemplazamiento(individuosAlAzar,numeroProgenitores,matrizDistanciaCiudades,funcionAjuste)
    sizeIndividuosAlAzar= size(individuosAlAzar);
    progenitores=zeros(numeroProgenitores,sizeIndividuosAlAzar(2));
    
    matrizFitness= AsignarFitness(funcionAjuste,individuosAlAzar,matrizDistanciaCiudades);
    for i=1:numeroProgenitores
        [maximoFitness,posicionDelMaximo]=max(matrizFitness);
        progenitores(i,:)= individuosAlAzar(posicionDelMaximo,:);
        [individuosAlAzar,matrizFitness]=EliminarProgenitorEnIndividuosAlAzar(individuosAlAzar,matrizFitness,posicionDelMaximo);
    end
end