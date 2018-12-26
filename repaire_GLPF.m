%%%Digital image processing
%%Author: Reza Rahimian
%%
clc;clear;close all
img=imread('Fig0449(a).tif');
figure();subplot(1,2,1);imshow(img);title('Orginal image');
ff_img=fftshift(fft2(img));
[m,n]=size(img);
d=100;

filter=gaussianLPF(m,n,d);
result=ff_img.*filter;
subplot(1,2,2);imshow(ifft2(ifftshift(result)),[0 255]);title('Text Repaire with GaussianLowPassFilter');