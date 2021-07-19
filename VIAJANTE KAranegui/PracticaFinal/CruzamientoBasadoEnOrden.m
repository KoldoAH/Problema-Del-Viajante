function descendientes= CruzamientoBasadoEnOrden(progenitores)
    sizeProgenitores= size(progenitores);
    descendientes= zeros(sizeProgenitores);
    numeroHijo=1;
    restarAlEliminarProgenitor=0;
    
    for i=1: sizeProgenitores(1)/2
        [padre1,padre2,progenitores,restarAlEliminarProgenitor]=ElegirPadresCruzamiento(progenitores,restarAlEliminarProgenitor,sizeProgenitores);
        [hijo1, hijo2]=CruzamientoEntreDosPadresBasadoEnOrden(sizeProgenitores,padre1,padre2);
        descendientes(numeroHijo,:)=hijo1;
        descendientes(numeroHijo+1,:)=hijo2;
        numeroHijo=numeroHijo+2;
    end
    
    
end