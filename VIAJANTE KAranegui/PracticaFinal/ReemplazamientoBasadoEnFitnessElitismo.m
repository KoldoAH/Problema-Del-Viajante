function listaCromosomas=ReemplazamientoBasadoEnFitnessElitismo(listaCromosomas,descendientes,matrizDistanciaCiudades,numeroProgenitores,funcionAjuste)
    individuosGeneracionAnterior=Ruleta(matrizDistanciaCiudades,numeroProgenitores,listaCromosomas,funcionAjuste);
    fitnessIndividuosGeneracionAnterior= AsignarFitness(funcionAjuste,individuosGeneracionAnterior,matrizDistanciaCiudades);
    fitnessDescendientes=AsignarFitness(funcionAjuste,descendientes,matrizDistanciaCiudades);
    for cromosoma=1:numeroProgenitores
        [maximoFitnessIndividuosGeneracionAnterior,posicionMaximoFitnessIndividuosGeneracionAnterior]=max(fitnessIndividuosGeneracionAnterior);
        [maximoFitnessDescendientes,posicionMaximoFitnessDescendientes]=max(fitnessDescendientes);
        
        if (maximoFitnessIndividuosGeneracionAnterior >=maximoFitnessDescendientes)
            fitnessIndividuosGeneracionAnterior(posicionMaximoFitnessIndividuosGeneracionAnterior)=[];
            individuosGeneracionAnterior(posicionMaximoFitnessIndividuosGeneracionAnterior,:)=[];
            [~,posicionMinimoDescendientes]= min(fitnessDescendientes);
            fitnessDescendientes(posicionMinimoDescendientes,:)=[];
            descendientes(posicionMinimoDescendientes,:)=[];
            
        else
            posicionEnListaCromosomas= EncontrarPosicionEnListaCromosomas(listaCromosomas,individuosGeneracionAnterior(posicionMaximoFitnessIndividuosGeneracionAnterior,:),size(listaCromosomas));
            listaCromosomas(posicionEnListaCromosomas,:)=descendientes(posicionMaximoFitnessDescendientes,:);
            fitnessIndividuosGeneracionAnterior(posicionMaximoFitnessIndividuosGeneracionAnterior)=[];
            individuosGeneracionAnterior(posicionMaximoFitnessIndividuosGeneracionAnterior,:)=[];
            fitnessDescendientes(posicionMaximoFitnessDescendientes,:)=[];
            descendientes(posicionMaximoFitnessDescendientes,:)=[];
        end
    end    
end