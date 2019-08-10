%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Filtro passa-baixas ideal %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clear all;
close all;
clc;

% Abre e mostra a imagem original
f =(imread('characters_test_pattern.tif'));
imshow(f)

% Pega a altura e a largura da imagem
[h,w] = size(f);

%%%%%%%%%%%%%%%%
% Passa-baixas %
%%%%%%%%%%%%%%%%

% Preenchimento padding de f e transformada
fpadding = uint8(zeros(2*h,2*w));
fpadding(h/2+1:h/2+w,w/2+1:w/2+w) =  f;


Fpadding = fftshift(fft2(fpadding));

D0 = 200;
H = zeros(2*h,2*w);
for i = 1:2*h  
    for j = 1:2*w
        D = sqrt((i-h)^2 + (j-w)^2);
        if D<= D0
            H(i,j) = 1;
        end
    end
end

G = Fpadding.*H;

g = ifft2(ifftshift(G));

g = g(h/2+1:h/2+h,w/2+1:w/2+w);

figure;
imshow(uint8(abs(g)));