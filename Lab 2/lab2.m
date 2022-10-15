clear; clc;

Image = im2double(imread('TestPattern.tif'));

% Uppg 1
boxKernel9 = ones(9)/9^2;

Image1 = imfilter(Image, boxKernel9);
 
figure(1);
imshow(Image);
figure(2);
imshow(Image1);


% Uppg 2
boxKernel21 = ones(21)/21^2;

Image2 = imfilter(Image, boxKernel21);

figure(3);
imshow(Image2);

% Uppg 3
%21 has a lower cutoff frequency and therefore produces a more blurred image.

% Uppg 4
%Because we are using zero padding.
%Kernel convolution usually requires values from pixels outside of the image boundaries. 
%There are a variety of methods for handling image edges.

% Uppg 5
Image3 = imfilter(Image, boxKernel21, 'replicate');

figure(4);
imshow(Image3);

% Uppg 6
A = zeros(21);
A(10, 10) = 1;

highPass = A - boxKernel21;

Image4 = imfilter(Image, highPass);

avg = mean2(Image4)

figure(5);
imshow(Image4);


% Uppg 7
%Highpass highlightar bildens skarpa intensitetsövergångar. Och vid mjukare
%övergångar blir då bilden mörkare.

% Uppg 8
Image5 = Image + Image4;

figure(6);
imshow(Image5)

% Uppg 9
sobx = [-1 -2 -1; 0 0 0; 1 2 1];

Image6 = imfilter(Image, sobx);

figure(7);
imshow(Image6);

% Uppg 10
soby = [-1 0 1; -2 0 2; -1 0 1];

Image7 = imfilter(Image, soby);

figure(8);
imshow(Image7);

% Uppg 11
Image8 = sqrt(Image6.^2 + Image7.^2);

figure(9);
imshow(Image8);











