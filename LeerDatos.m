%Lectura entero dato MODBUS (Lee los datos del PLC)(entradas del modelo)

function dato = LeerDatos()

global m;

% Lectura posición de memoria 0 (longitud 1)
dato_sin_proc = read(m,'inputregs',1,4);

datoFuerzas = (dato_sin_proc(1:2)-32768)*12;
datoL = (dato_sin_proc(3))/1000;
datoEnganche = dato_sin_proc(4)-1;

dato = [datoFuerzas datoL datoEnganche];


