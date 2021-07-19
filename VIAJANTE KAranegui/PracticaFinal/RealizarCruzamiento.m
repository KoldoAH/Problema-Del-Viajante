function [hijo1,hijo2]=RealizarCruzamiento(padre1,padre2,posicionPuntoCruzamiento,sizeProgenitores,opcionCruzamiento)
    if (opcionCruzamiento=="CruzamientoSobreUnPunto")
        hijo1= [padre1(1,1:posicionPuntoCruzamiento) padre2(1,posicionPuntoCruzamiento+1:sizeProgenitores(2))];
        hijo2= [padre2(1,1:posicionPuntoCruzamiento) padre1(1,posicionPuntoCruzamiento+1:sizeProgenitores(2))];
    elseif(opcionCruzamiento=="CruzamientoUniforme")
        arrayIntercambio= randi([1 2], 1,sizeProgenitores(2));
        hijo1=zeros(1,sizeProgenitores(2));
        hijo2=zeros(1,sizeProgenitores(2));
        for gen=1:sizeProgenitores(2)
            if(arrayIntercambio(1,gen)==1)
                hijo1(1,gen)= padre1(1,gen);
                hijo2(1,gen)= padre2(1,gen);     
            elseif(arrayIntercambio(1,gen)==2)
                hijo1(1,gen)= padre2(1,gen);
                hijo2(1,gen)= padre1(1,gen);
            end
        end
    end
end