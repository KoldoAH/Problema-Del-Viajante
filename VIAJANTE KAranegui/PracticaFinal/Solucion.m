function [cromosomaSolucion, maximoFitness]= Solucion(listaCromosomas,funcionAjuste,matrizDistanciaCiudades)
    [matrizFitness,~]= AsignarFitness(funcionAjuste,listaCromosomas,matrizDistanciaCiudades);
    maximoFitness=max(matrizFitness);
    posicionElementoMejorFitness =find(matrizFitness==maximoFitness);
    cromosomaSolucion=listaCromosomas(posicionElementoMejorFitness,:);
    
end