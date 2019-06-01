%% Hit-or-miss transformation

close all
clear all
clc

% Read image
I = imread('NoisyTwoLs.jpg') 

% Example 1
se1 = [0 0 0; 1 1 0; 0 1 0]; % SE1 defines hits
se2 = [1 1 1; 0 0 1; 0 0 1]; % SE2 defines miss
bw = bwhitmiss(I,se1,se2); % hit-or-miss transformation
figure,
subplot(2,2,1);imshow(I,[0 1]); title('Original image');
subplot(2,2,2);imshow(bw,[0 1]); title('Example 1');

% Example 2
interval = [ 1 1 1; 1 1 1; 0 1 1];
bw = bwhitmiss(I,interval); % hit-or-miss transformation
subplot(2,2,3,);imshow(bw,[0,1]); title('Example 2');

% Example 3
interval = [ 0 1 1; 0 1 1; 0 0 0];
bw = bwhitmiss(I,interval); % hit-or-miss transformation
subplot(2,2,4,);imshow(bw,[0,1]); title('Example 3');
