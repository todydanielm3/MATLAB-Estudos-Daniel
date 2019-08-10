%%%%%%%%%%%%%%%%%%%%%%%%
% Ruido                %
%%%%%%%%%%%%%%%%%%%%%%%%
clear all;
close all;
clc;

% Abre a image
I = imread('Lena.bmp');
[h, w] = size(I);

% Estrutura para armazenar as vers�es ruidosas da imagem
N = 100;
IRuido = zeros(h,w,N);

for i = 1:N    
    r = randn(h,w);
    IRuido(:,:,i) = double(I) + 10*r;        
end

imshow(uint8(IRuido(:,:,5)));

MediaI = zeros(h,w);

for i = 1:h
    for j = 1:w
        MediaI(i,j) = mean(IRuido(i,j,:));
    end
end

figure;imshow(uint8(MediaI));
 