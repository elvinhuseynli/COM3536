Below find the solution !!

Program:

clc
clear
close all;

FILE_NAME = 'Lenna.png'; % enter your image file name, make sure it is in the same folder your script is
A = imread(FILE_NAME); % I am reading a color image
% this statement converts color image to gray scale, if u are reading a
% gray scale image instead comment the below line out.
A = rgb2gray(A);
J = mat2gray(A, [0 255]);
[n, m] = size(J); % length of rows and columns of image respectively
% initializing 1-D Filter sizes into an array.
M = [11, 31, 61];

for i=1:numel(M)
% create a vector of ones of size M and divide it by M
averaging_filt_1d = ones(1,M(i))/M(i);
Y = conv2(J,averaging_filt_1d,'same');
idx = 10; % index of row which we want to take transform
Y_fft = fft(Y(idx,:));
Y_fft = fftshift(Y_fft);
freq_axis = linspace(-pi, pi, m);
figure
hold on
subplot(211)
imshow(Y)
title(['Filtered Image with M = ',num2str(M(i))]);
subplot(212)
plot(freq_axis, abs(Y_fft));
xlabel('

ωˆ

','Interpreter','Latex');ylabel('

|H(ωˆ)|

','Interpreter','Latex');
title('Magnitude Response')
axis([-pi pi 0 max(Y_fft)+20]);

end
