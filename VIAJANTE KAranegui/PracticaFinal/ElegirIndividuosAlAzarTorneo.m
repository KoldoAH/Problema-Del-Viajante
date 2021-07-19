function individuosAlAzar= ElegirIndividuosAlAzarTorneo(listaCromosomas,numeroIndividuosAlAzar)
    sizeListaCromosomas= size(listaCromosomas);
    individuosAlAzar=zeros(numeroIndividuosAlAzar,sizeListaCromosomas(2));
    for i= 1:numeroIndividuosAlAzar
        posicionRuta= randi([1 sizeListaCromosomas(1)]);
        individuosAlAzar(i,:)= listaCromosomas(posicionRuta,:);
    end
end