%% COMUNICACIÓN ENTRE EL MODELO SIMULADO DE LA GRÚA Y EL PLC VIRTUAL
% David Rodríguez Bascuñana

load Datos_iniciales.mat

%Creación de un objeto de comunicación Modbus<
global m;

m = modbus('tcpip', '192.168.1.128', 502) %Dirección IP donde está el PLC

disp('Comunicación MODBUS INICIALIZADA');
sinc = 0;
write(m,'holdingregs',5,sinc);

% iniciar la simulacion del modelo
sim("Simulacion_BASE.slx");