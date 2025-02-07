%% Histogram calculation for color image

clear all
close all
clc

R = 1;
G = 2;
B = 3;
I = imread('peppers.png');
figure, imshow(I);

%Calculating histogram
[m,n,l] = size(I);

for i=1:256
     h(i,R) = 0;
     h(i,G) = 0;
     h(i,B) = 0;
end

for i = 1:m
    for j = 1:n
        for k = 1:3
            x = I(i,j,k);
            h(x + 1,k) = h(x+1,k) + 1;
        end
    end
end

figure,
subplot(1,3,1); imshow(I); title('Orginal image');
subplot(1,3,2); plot(h(:,R),'r'); title('Calculated histogram');
axis([0 256 0 14000]);
hold on
plot(h(:,G),'g');
plot(h(:,B),'b');
hold off;
imh(:,:,1) = imhist(I(:,:,1));
imh(:,:,2) = imhist(I(:,:,2));
imh(:,:,3) = imhist(I(:,:,3));
subplot(1,3,3); plot(imh(:,:,1),'r'); title('Matlab histogram');
axis([0 256 0 14000]);
hold on;
plot(imh(:,:,2),'g')
plot(imh(:,:,3),'b')
hold off;
