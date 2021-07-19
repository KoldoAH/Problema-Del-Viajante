function progenitores= Ruleta(matrizDistanciaCiudades,numeroProgenitores,listaCromosomas,funcionAjuste)
    [matrizFitness,totalFitness]=AsignarFitness(funcionAjuste,listaCromosomas,matrizDistanciaCiudades);
    matrizProbabilidades= CalcularProbabilidad(matrizFitness,totalFitness);
    tablaIntervalos= CrearTablaIntervalos(matrizProbabilidades);
    progenitores= SeleccionarProgenitoresRuleta(tablaIntervalos,numeroProgenitores,listaCromosomas);
end