function posicionEnListaCromosomas= EncontrarPosicionEnListaCromosomas(listaCromosomas,cromosomaMaximoFitness,sizeListaCromosomas)
  
  posicionEnListaCromosomas= 1;
  haEncontradoCromosoma="False";
  while (posicionEnListaCromosomas<=sizeListaCromosomas(1)) && haEncontradoCromosoma=="False"
      if (cromosomaMaximoFitness== listaCromosomas(posicionEnListaCromosomas,:))
          haEncontradoCromosoma="True";
      else
          posicionEnListaCromosomas=posicionEnListaCromosomas+1;
      end
      
  end
end
