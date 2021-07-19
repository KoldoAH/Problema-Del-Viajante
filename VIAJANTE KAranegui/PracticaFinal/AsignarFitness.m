function [matrizFitness,totalFitness]=AsignarFitness(funcionAjuste,listaCromosomas,matrizDistanciaCiudades)
    sizeListaCromosomas=size(listaCromosomas);
    matrizFitness= zeros(sizeListaCromosomas(1),1);
    
    totalFitness=0;
    
    for cromosoma=1:sizeListaCromosomas(1)
        distanciaRuta= SumaDistanciasRuta(listaCromosomas(cromosoma,:),matrizDistanciaCiudades, sizeListaCromosomas(2));
        
        matrizFitness(cromosoma)= polyval(funcionAjuste,1/(distanciaRuta+1));
        totalFitness= totalFitness+matrizFitness(cromosoma);
    end
end