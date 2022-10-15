clc; clear;

cTP = im2double(imread('characterTestPattern.tif'));
imshow(cTP)

%Uppg 1
A = fftshift(fft2(cTP));
Spec1 = log(1 + abs(A));
Spec1 = Spec1/max(Spec1(:));

figure(1);
imshow(Spec1);

% %Uppg 2
cTP_shift = circshift(cTP, [100, -200]);

B = fftshift(fft2(cTP_shift));
Spec2 = log(1 + abs(B));
Spec2 = Spec2/max(Spec2(:));

figure(2);
imshow(Spec2);

%Uppg 3
%Dom ser exakt likadana ut...
%imshow(Spec1 - Spec2);
%Helt svart bild. Inga skillnader.

%Uppg 4
cTP_rot = imrotate(cTP, 15, 'bicubic');

C = fftshift(fft2(cTP_rot));
Spec3 = log(1 + abs(C));
Spec3 = Spec3/max(Spec3(:));

figure(3);
imshow(Spec3);

%Uppg 5
%Dom lodräta och horizontella linjerna är skarpare, och är roterade 15 grader. 

cTP2 = im2double(imread('characterTestPattern_2.tif'));
%imshow(cTP2)

%Uppg 6
D = fftshift(fft2(cTP2));
Spec4 = log(1 + abs(D));
Spec4 = Spec4/max(Spec4(:));

figure(4);
imshow(Spec4);

%Uppg 7
%Den horizontella linjen i Spec4 är mindre/inte synlig jämfört med Spec1
%imshow(Spec1 - Spec4);
%Ser att det skilljer på den horizontella axeln.

%Uppg 8
%Om horizontella linjerna blir borttagna kommer den horizontella axeln i
%spektrummet vara svagare eller helt borta.

cTP3 = im2double(imread('characterTestPattern_3.tif'));
%imshow(cTP3)

%Uppg 9
E = fftshift(fft2(cTP3));
Spec5 = log(1 + abs(E));
Spec5 = Spec5/max(Spec5(:));

figure(5);
imshow(Spec5);

%Uppg 10
%imshow(Spec1 - Spec5);
%Skillnad på linjerna i dom diagonala axlarna. I Spec5 är dom diagonala
%linjerna nästan försvunna.

v2 = imread('verticalbars_2.tif');
%imshow(v2)

F = fftshift(fft2(v2));
Spec6 = log(1 + abs(F));
Spec6 = Spec6/max(Spec6(:));

figure(6);
imshow(Spec6);

%Uppg 11
%Pricken i mitten skulle vara kvar men dom två prickarna på den
%horizontella axeln skulle istället hamna på den lodräta.

v4 = imread('verticalbars_4.tif');
%imshow(v4)

% Uppg 12
% f = 1/P = 1/4 = 0.25 cycles/pixel
% Prickarna i spektrummet hamnar närmare mitten.
% 
% Uppg 13
% Alla tre prickar i spektrummet borde vara väldigt nära/i mitten. Bredvid
% varandra i mitten av spektrummet.
% f = 1/P = 1/300 cycles/pixel

E1 = imread('Einstein1.jpg');
E1 = im2double(E1);

E2 = imread('Einstein2.jpg');
E2 = im2double(E2);

F1 = fftshift(fft2(E1));
F2 = fftshift(fft2(E2));

ang1 = angle(F1);
ang2 = angle(F2);
S1 = abs(F1);
S2 = abs(F2);

%Uppg 14
E1_E2 = real(ifft2(S1.*exp(i * ang2)));
figure(7)
imshow(E1_E2)

%Uppg 15
E2_E1 = real(ifft2(S2.*exp(i * ang1)));
figure(8)
imshow(E2_E1)

%Uppg 16
%
%

























