%% COMUNICACI�N ENTRE EL MODELO SIMULADO DE LA GR�A Y EL PLC VIRTUAL
% David Rodr�guez Bascu�ana

load Datos_iniciales.mat

%Creaci�n de un objeto de comunicaci�n Modbus<
global m;

m = modbus('tcpip', '192.168.1.128', 502) %Direcci�n IP donde est� el PLC

disp('Comunicaci�n MODBUS INICIALIZADA');
sinc = 0;
write(m,'holdingregs',5,sinc);

% iniciar la simulacion del modelo
sim("Simulacion_BASE.slx");