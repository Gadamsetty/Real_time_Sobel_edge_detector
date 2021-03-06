% author : Abhinav Himanshu
% filename : sobel_edge.m
% Description : detectes edges using Sobel filter without localisation

%% This is Sobel filter without localisation of edges
I=imread('cameraman.tif');

% All images are in 0-255 so we need 8 bit for storing image
% Pixel Bit Width should be a parameter in our HW implementaiton
% lets say W is width and H is height of image, So a WxH image
% W and H should be parameter in our HW implementation
[H,W] = size(I); 


%% 
% Filter is Sobel (double derivative based)
% Filter for this is fixed not even the kernel(window) size can be modified 
% We will have to convert this filter into signed number for VHDL and later
% right shift by specific amount
Hxs = [-1 0 1;-2 0 2; -1 0 1];
Hys = [1 2 1; 0 0 0 ; -1 -2 -1]; 

%%
% Convolving the filter Conv2 actually flips the filter and assumes Zero We
% wil also do the same; But it mighr add artificats in boundry line
Gxs = conv2(I,Hxs); 
Gys = conv2(I,Hys);
Gxss = Gxs(2:H,2:W);
Gyss = Gys(2:H,2:W);

%% 
% Lets try to see magnitude
Edge_map_s = abs(Gyss)+abs(Gxss);

ths_s = 90;

% map it to 0 - 255
Edge_s = (Edge_map_s - min(min(Edge_map_s))) * 255 /(max(max(Edge_map_s))-min(min(Edge_map_s)));
Edge1_s = ( Edge_s > ths_s);
figure (2);
imshow(uint8(Edge_s));
figure(3);
imshow(uint8(Edge1_s*255));


figure (1);
imshow(I);
