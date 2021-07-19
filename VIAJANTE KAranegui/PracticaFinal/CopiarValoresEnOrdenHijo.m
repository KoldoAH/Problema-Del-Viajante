function hijo= CopiarValoresEnOrdenHijo(hijo,sizeProgenitores,puntoCruzamiento1,puntoCruzamiento2,padre2)

    if (puntoCruzamiento2<sizeProgenitores(2))
        posicionEnPadre2=puntoCruzamiento2+1;
        for gen=puntoCruzamiento2+1:sizeProgenitores(2)
            while (find(hijo==padre2(1,posicionEnPadre2)))
                if posicionEnPadre2>=sizeProgenitores(2)
                    posicionEnPadre2=1;
                else
                    posicionEnPadre2=posicionEnPadre2+1;
                end
            end
            hijo(1,gen)=padre2(1,posicionEnPadre2);
            if posicionEnPadre2>=sizeProgenitores(2)
                posicionEnPadre2=1;
            else
                posicionEnPadre2=posicionEnPadre2+1;
            end
        end
    else
        posicionEnPadre2=1;
    end
    for gen=1:puntoCruzamiento1-1
        while (find(hijo==padre2(1,posicionEnPadre2)))
            if posicionEnPadre2>=sizeProgenitores(2)
                posicionEnPadre2=1;
            else
                posicionEnPadre2=posicionEnPadre2+1;
            end
        end
            hijo(1,gen)=padre2(1,posicionEnPadre2);
            if posicionEnPadre2>=sizeProgenitores(2)
                posicionEnPadre2=1;
            else
                posicionEnPadre2=posicionEnPadre2+1;
            end
    end
end