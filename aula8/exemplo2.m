%%%%%%%%%%%%%%%%%%%%%%%%
% Fourier              %
%%%%%%%%%%%%%%%%%%%%%%%%
clear all;
close all;
clc;

S = 0;

% Intervalo de simula��o (em segundos)
ti = -3;  % Tempo inicial
tf = 3;  % Tempo final

% Simula a fun��o cont�nua
tcont = ti:1/200:tf;

% N�mero de termos
N =50


for i = 1:N
        
    % Freq��ncia do sinal (em Hertz)
    fc = i;
    ycont = -2*(((-1)^i)/(pi*i))*sin(pi*i.*tcont);
    
    figure(1)
    plot(tcont, ycont)    
    axis([ti tf -1 1])
    grid on
    
    pause
        
    S = S + ycont;
   
       
    figure(2)
    plot(tcont, S)                  
    grid on
         
end
