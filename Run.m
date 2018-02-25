clc; clear all; close all;
addpath('Solver');
load imdata.mat

%% Read Images
dir_name = 'Data/';
imagefiles = dir([dir_name,'*jpg']);
nfiles = length(imagefiles);
for i=1:nfiles
    currentfilename = [dir_name,imagefiles(i).name];
    images{i} = currentfilename;
    focus_all(i) = focus(i);
end
all_in_focus = imread([dir_name,'All_in_Focus/afocus.png']);

%% Initial Depth Map 3-point Gaussian
opt = 1;

if opt == 1
    % Option 1. We recommend to use this option as you do not need any
    % pre-measured information about focus position of each image. 
    % This option works for any case but you need a GPU and CUDA > 7.0
    init(dir_name);
    init = imread('initial.png');
    init = im2double(init);
    figure, imshow(init,[]); title('Initial Depth Map'); colormap(gca, parula);
    
else if opt == 2
        % Option 2. If you have the measurment about the focus position of 
        % each image then you can use this option.
        ROI = [131.5 59.5 876 942];
        visual(images, focus_all, ROI);
        [z, r] = shape3gauss(images, 'focus', focus_all, 'filter', 3);
        init = im2double(z);
        figure, imshow(init,[]); title('Initial Depth Map'); colormap(gca, parula);
    end
end
%% Filter using PADMM
% Parameters
lambda = .7;
n_iter = 300;
[filt_img,er] = padmm_refine(lambda,n_iter,init,all_in_focus);
figure, imshow(filt_img,[]); title('Refined Depth Map'); colormap(gca, parula);