function matrizDistanciaCiudades= GenerarMatrizAleatoria (tamanioMatriz)
    matrizDistanciaCiudades= randi([0,100],tamanioMatriz,tamanioMatriz);
    for i=1:tamanioMatriz
        matrizDistanciaCiudades(i,i)= 0;
    end
end