% Filtragem Homomorfica
clear all;
close all;

f = double(imread('cameraman.tif'));

figure(1);  imshow(f,[]); pause;
f = log(f+1);
F = fftshift(fft2(f));

[nc,nr] = size(f);
nr2 = nr/2+1;      nc2 = nc/2+1;     % (tamanho da imagem deve ser par)
[u,v] = meshgrid(1:nr,1:nc);
z = (u-nr2).^2 + (v-nc2).^2; 
gamma_h = 1;  gamma_l = .1;  wdth = 200;      % cameraman

H = (gamma_h - gamma_l).*(1 - exp(-.9 .* z/(wdth.^2))) + gamma_l;        

% figure(1); mesh(H); return;
G = F .* H;
g = real(ifft2(ifftshift(G)));
g = exp(g)-1;
figure(2); imshow(g,[]); pause;
return;

