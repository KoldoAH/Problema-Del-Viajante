function [numeroAleatorio1,numeroAleatorio2]=ElegirIntervalo(sizeDescendientes)
    numeroAleatorio1=randi([1 sizeDescendientes(2)]);
    numeroAleatorio2=randi([1 sizeDescendientes(2)]);
    if(numeroAleatorio1>numeroAleatorio2)
        aux= numeroAleatorio1;
        numeroAleatorio1=numeroAleatorio2;
        numeroAleatorio2= aux;
    end
end