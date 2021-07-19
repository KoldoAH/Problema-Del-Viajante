function progenitores= SeleccionarProgenitoresRuleta(tablaIntervalos,numeroProgenitores,listaCromosomas)
    progenitores=[];
    for i=1:numeroProgenitores
        numeroElegido= rand();
        posicion= BuscarIntervalo(numeroElegido,tablaIntervalos);
        progenitores=[progenitores;listaCromosomas(posicion,:)];
    end
end