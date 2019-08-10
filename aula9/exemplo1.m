%%%%%%%%%%
% DFT-2D %
%%%%%%%%%%
clear all;
close all;
clc;

f = double(imread('rect.tif'));
imshow(f)
F = abs(fft2(f));
figure
imshow(F,[])
Fd = fftshift(F);
figure
imshow(Fd,[])
Fr = Fd.^0.2;
figure
imshow(Fr,[])


f = double(imread('rect2.bmp'));
figure
imshow(f)
F = abs(fft2(f));
figure
imshow(F,[])
Fd = fftshift(F);
figure
imshow(Fd,[])
Fr = Fd.^0.2;
figure
imshow(Fr,[])

f = imrotate(imread('rect.tif'),45,'nearest');
imshow(f)
F = abs(fft2(f));
figure
imshow(F,[])
Fd = fftshift(F);
figure
imshow(Fd,[])
Fr = Fd.^0.2;
figure
imshow(Fr,[])