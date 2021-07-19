function descendientes= MutacionPorInversion(descendientes)
    sizeDescendientes= size(descendientes);
    for cromosoma=1:sizeDescendientes(1)
        [posicionInicial,posicionFinal]=ElegirIntervalo(sizeDescendientes);
        cadenaInvertida=fliplr(descendientes(cromosoma, posicionInicial:posicionFinal));
        descendientes(cromosoma,posicionInicial:posicionFinal)=cadenaInvertida;
    end
end