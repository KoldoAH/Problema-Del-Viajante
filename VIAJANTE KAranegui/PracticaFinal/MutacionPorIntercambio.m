function descendientes= MutacionPorIntercambio (descendientes)
    sizeDescendientes= size(descendientes);
    for cromosoma= 1:sizeDescendientes(1)
        [posicionInicial,posicionFinal]=ElegirIntervalo(sizeDescendientes);
        aux= descendientes(cromosoma,posicionInicial);
        descendientes(cromosoma, posicionInicial)= descendientes(cromosoma,posicionFinal);
        descendientes(cromosoma, posicionFinal)= aux;
    end
end