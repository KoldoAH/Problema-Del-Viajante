function [puntoCruzamiento1,puntoCruzamiento2]= AsignarPuntosCruzamiento(sizeProgenitores)
    puntoCruzamiento1= randi([1 sizeProgenitores(2)]);
    puntoCruzamiento2= randi([1 sizeProgenitores(2)]);
    if (puntoCruzamiento1>puntoCruzamiento2)
        aux=puntoCruzamiento2;
        puntoCruzamiento2=puntoCruzamiento1;
        puntoCruzamiento1=aux;
    end
end