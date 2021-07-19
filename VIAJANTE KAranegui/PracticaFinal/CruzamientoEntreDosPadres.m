function [hijo1,hijo2]=CruzamientoEntreDosPadres(sizeProgenitores,padre1,padre2)
    hijo1=zeros(1,sizeProgenitores(2));
    hijo2=zeros(1,sizeProgenitores(2));
    
    [puntoCruzamiento1,puntoCruzamiento2]= AsignarPuntosCruzamiento(sizeProgenitores);
    hijo1(1,puntoCruzamiento1:puntoCruzamiento2)= padre1(1,puntoCruzamiento1:puntoCruzamiento2);
    hijo1= CopiarValoresEnOrdenHijo(hijo1,sizeProgenitores,puntoCruzamiento1,puntoCruzamiento2,padre2);

    hijo2(1,puntoCruzamiento1:puntoCruzamiento2)= padre2(1,puntoCruzamiento1:puntoCruzamiento2);
    hijo2= CopiarValoresEnOrdenHijo(hijo2,sizeProgenitores,puntoCruzamiento1,puntoCruzamiento2,padre1);
end