%Autor: Koldo Aranegui Huarte

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%PARAMETROS PARA MODIFICAR
numeroIteraciones= 3000;
tamanioMatriz=16; %numero par para que no haya problemas con el método de cruzamiento
numeroIndividuosPoblacion= 100;
funcionAjuste= [1 0];
numeroProgenitores=100;
numeroIndividuosAlAzar=100;
    
metodoSelecionProgenitores= "Torneo con reemplazamiento";
metodoCruzamiento= "Cruzamiento basado en orden";
metodoMutacion= "Mutacion por intercambio";
metodoReemplazamiento="Reemplazamiento basado en fitness elitismo";
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

AlgoritmoGenetico(metodoSelecionProgenitores,metodoCruzamiento,metodoMutacion,metodoReemplazamiento,  tamanioMatriz, numeroIndividuosPoblacion, funcionAjuste, numeroProgenitores, numeroIndividuosAlAzar, numeroIteraciones);
