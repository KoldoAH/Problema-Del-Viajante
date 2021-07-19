function AlgoritmoGenetico(metodoSeleccionProgenitores,metodoCruzamiento,metodoMutacion,metodoReemplazamiento,  tamanioMatriz, numeroIndividuosPoblacion, funcionAjuste, numeroProgenitores, numeroIndividuosAlAzar, numeroIteraciones)
    tablaAlmacenarMejorFitness= zeros(numeroIteraciones,1);
    
    matrizDistanciaCiudades= GenerarMatrizAleatoria(tamanioMatriz);
    listaCromosomas= CrearRutas(tamanioMatriz, numeroIndividuosPoblacion);
    
    iteracion=1;
	while iteracion<=numeroIteraciones
        %Seleccion progenitores
        if (metodoSeleccionProgenitores == "Ruleta")
           progenitores=Ruleta(matrizDistanciaCiudades,numeroProgenitores,listaCromosomas,funcionAjuste);
        elseif(metodoSeleccionProgenitores == "Torneo sin reemplazamiento")
           progenitores=TorneoSinReemplazamiento(matrizDistanciaCiudades,numeroProgenitores,listaCromosomas,funcionAjuste,numeroIndividuosAlAzar);
        elseif(metodoSeleccionProgenitores== "Torneo con reemplazamiento")
            progenitores=TorneoConReemplazamiento(matrizDistanciaCiudades,numeroProgenitores,listaCromosomas,funcionAjuste,numeroIndividuosAlAzar);
        else
            disp("Error. Método de seleccion de progenitores no emplementado.");
            break;
        end
                
        %Cruzamiento de padres
        if(metodoCruzamiento=="Cruzamiento basado en orden")
            descendientes= CruzamientoBasadoEnOrden(progenitores);
        elseif(metodoCruzamiento== "Cruzamiento parcialmente mapeado")
            descendientes= CruzamientoParcialmenteMapeado(progenitores);
        else
            disp("Error. Método de cruzamiento no implementado.");
            break;
        end
        
        %Mutación
        if (metodoMutacion=="Mutacion por intercambio")
            descendientes= MutacionPorIntercambio(descendientes);
        elseif (metodoMutacion== "Mutacion por inversion")
            descendientes= MutacionPorInversion(descendientes);
        elseif(metodoMutacion=="")
            %No hacer mutación
        else
            disp("Error. Método de mutación no implementado.")
            break;
        end
        
        %Reemplazamiento
        if(metodoReemplazamiento=="Reemplazamiento basado en fitness elitismo")
            listaCromosomas=ReemplazamientoBasadoEnFitnessElitismo(listaCromosomas,descendientes,matrizDistanciaCiudades,numeroProgenitores,funcionAjuste);
        else
            listaCromosomas=ReemplazamientoBasadoEnFitnessElitismo(listaCromosomas,descendientes,matrizDistanciaCiudades,numeroProgenitores,funcionAjuste);
        end
        [cromosomaSolucion,maximoFitnessIteracion]= Solucion(listaCromosomas,funcionAjuste, matrizDistanciaCiudades); 
        tablaAlmacenarMejorFitness(iteracion)= 1/maximoFitnessIteracion;
        iteracion= iteracion + 1; 
    end
    [cromosomaSolucion,maximoFitnessIteracion]= Solucion(listaCromosomas,funcionAjuste, matrizDistanciaCiudades); 
    plot(1:numeroIteraciones, tablaAlmacenarMejorFitness);
    disp("Cromosoma solución: ");
    disp(cromosomaSolucion);
end
