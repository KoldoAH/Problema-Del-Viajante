function hijo=CopiarElementosParcialmenteMapeado(hijo,sizeProgenitores,puntoCruzamiento1,puntoCruzamiento2,padre1,padre2)
    disp("CEPM hijo antes for");
    disp(hijo);
    for gen=puntoCruzamiento1:puntoCruzamiento2
        if (find(padre2(1,gen)==hijo)) 
        else
            elementoPadre2=padre2(1,gen);
            elementoPadre1= padre1(1,gen);
            posicionEnpadre2= find(elementoPadre1==padre2);
            if (find(posicionEnpadre2==puntoCruzamiento1:puntoCruzamiento2))
                elementoPadre1= padre1(1,posicionEnpadre2);
                posicionEnpadre2=  find(elementoPadre1==padre2);
                if( hijo(1,posicionEnpadre2)==0)
                    hijo(1,posicionEnpadre2)= elementoPadre2;
                end
            else
                 if( hijo(1,posicionEnpadre2)==0)
                    hijo(1,posicionEnpadre2)= elementoPadre2;
                 end
            end
        end
    end
    disp("CEPM hijo despues for");
    disp(hijo);
    for gen=1:sizeProgenitores(2)
        if (hijo(1,gen)== 0)
            if (find(padre2(1,gen))~= hijo)
                hijo(1,gen)= padre2(1,gen);
            else
                
                aux=1;
                sizeElementosEnComun= size(find(padre2(1,aux)== hijo));
                disp(sizeElementosEnComun);
                while ((aux<=sizeProgenitores(2)) && (sizeElementosEnComun(1)~=0)&&sizeElementosEnComun(2)~=0)
                    aux=aux+1;
                    if aux<=sizeProgenitores(2)
                        sizeElementosEnComun= size(find(padre2(1,aux)== hijo));
                    end
                end
                if aux<=sizeProgenitores(2)
                    hijo(1,gen)= padre2(1,aux);
                end
            end
        end
    end
    disp("CEPM hijo RESULTADO");
    disp(hijo);
end