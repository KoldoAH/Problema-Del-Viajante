function[hijo1,hijo2]= CruzamientoEntreDosPadresParcialmenteMapeado(progenitores,padre1,padre2)
    sizeProgenitores= size(progenitores);
    hijo1=zeros(1,sizeProgenitores(2));
    hijo2=zeros(1,sizeProgenitores(2));
    [puntoCruzamiento1,puntoCruzamiento2]= AsignarPuntosCruzamiento(sizeProgenitores);
    
    hijo1(1,puntoCruzamiento1:puntoCruzamiento2)= padre1(1,puntoCruzamiento1:puntoCruzamiento2);
    hijo1=CopiarElementosParcialmenteMapeado(hijo1,sizeProgenitores,puntoCruzamiento1,puntoCruzamiento2,padre1,padre2);
    
    hijo2(1,puntoCruzamiento1:puntoCruzamiento2)= padre2(1,puntoCruzamiento1:puntoCruzamiento2);
    hijo2=CopiarElementosParcialmenteMapeado(hijo2,sizeProgenitores,puntoCruzamiento1,puntoCruzamiento2,padre2,padre1);

end