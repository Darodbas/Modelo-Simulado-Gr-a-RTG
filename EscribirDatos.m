%Escritura entero dato MODBUS (Escribe datos en el PLC)(Salidas del modelo)

function EscribirDatos(dato)

global m;

datos_salidas = round(dato(1:4)*100)+32768;
dato_sinc = dato(5);
dato_CLK = round(dato(6)*100);
datoEntero = [datos_salidas; dato_sinc;dato_CLK];


% Escritura posición de memoria 0 (longitud 1)
write(m,'holdingregs',1,[datoEntero]);