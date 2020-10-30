close all; clear all; clc;

BF = imread("BF.jpg");
FC = imread("FC.jpg");

%得到二值化的图片
BF_BW = im2bw(BF, 0.5);
FC_BW = im2bw(FC, 0.5);

% labeled是处理后的矩阵，numObjects是cell的个数；
[labeled1,numObjects_BF]=bwlabel(BF_BW,8);
[labeled2,numObjects_FC]=bwlabel(FC_BW,8);

%计算荧光率
fluorescence_rate = numObjects_FC/numObjects_BF