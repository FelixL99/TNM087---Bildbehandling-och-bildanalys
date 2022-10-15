clc; clear;

%Uppg. 2
Image = imread('IntensityRamp.tif');

% Image = imread('einstein-low-contrast.tif');
% Image = im2double(Image);

max = max(Image(:));
min = min(Image(:));

Image2 = 1*((Image-min)/(max-min));

figure(1);
imshow(Image);
figure(2);
imshow(Image2);
figure(3);
imhist(Image);
figure(4);
imhist(Image2);


%Uppg. 3
% Image = im2double(imread('angiography-mask-image.tif'));
% Image2 = im2double(imread('angiography-live-image.tif'));
% 
% Image3 = Image2 - Image;
% 
% figure(1);
% imshow(Image);
% figure(2);
% imshow(Image2);
% figure(3);
% imshow(Image3, []);
% 
% %Uppg. 4
% Image = imread('pollen-lowcontrast.tif');
% 
% Image2 = histeq(Image);
% 
% figure(1);
% imshow(Image);
% figure(2);
% imhist(Image);
% figure(3);
% imshow(Image2);
% figure(4);
% imhist(Image2);
% 
% %Uppg. 5
% Image = im2double(imread('Shade_pattern.tif'));
% Image2 = im2double(imread('Shade_estimate.tif'));
% 
% Image3 = Image./Image2;
% 
% BW = imbinarize(Image3, 0.5);
% 
% % figure(1);
% % imshow(Image);
% % figure(2);
% % imhist(Image);
% % figure(3);
% % imshow(Image2);
% % figure(4);
% % imhist(Image2);
% figure(3);
% imshow(Image3);
% figure(4);
% imhist(Image3);
% figure(5);
% imshow(BW);
% figure(6);
% imhist(BW);
% 
% %Uppg. 6
% I = zeros(400,600,3);
% 
% I(:,:,3) = 1;
% I(150:250,:,3) = 0;
% I(150:250,:,1) = 1;
% I(150:250,:,2) = 1;
% 
% I(:,200:300,3) = 0;
% I(:,200:300,1) = 1;
% I(:,200:300,2) = 1;
% 
% imshow(I)















