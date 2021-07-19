function distanciaRuta= SumaDistanciasRuta(filaListaCromosomas,matrizDistanciaCiudades,sizefila)
    distanciaRuta=0;
    
    ciudadOrigen=1;
    for ciudadLlegada=2:sizefila
        distanciaRuta= distanciaRuta + matrizDistanciaCiudades(filaListaCromosomas(ciudadOrigen),filaListaCromosomas(ciudadLlegada));
        ciudadOrigen= ciudadOrigen+1;
    end
end