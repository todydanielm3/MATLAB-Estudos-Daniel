

%ler imagem inicial
M0 = double(imread('bab512.tif'));
imshow(M0,[]);

%FT da imagem
Fm = log(fftshift(abs(fft2(M0)))+.01);
figure; imshow(Fm,[]);

pause; close all;

%ler imagem inicial
M0 = double(imread('lena.tif'));
imshow(M0,[]);

%FT da imagem
Fm = log(fftshift(abs(fft2(M0)))+.01);
figure; imshow(Fm,[]);