%lecture 32_add_two_images
%https://www.youtube.com/watch?v=dqTtAcljH_8&list=PLAwxTw4SYaPnbDacyrK_kB_RUkuxQBlCm&index=30
clc;
clear all;
close all;
img1=imread('baboon.bmp');
img2=imread('bird.gif');

sum=img1+img2;
average=img1/2+img2/2;
average2=(img1+img2)/2;
imshow(img1);
disp(size(img1));
imshow(img2);
disp(size(img2));
%need to make sure their size are equal (0:19)
im_red=img1(:,:,1);
%imshow(im_red); 
%0:46->bright area shows high red value, darker areas are vice versa
plot(im_red(150,:));

figure;
imshow(sum);
figure;
imshow(average);
figure
imshow(average2);

%{
Lecture 32
-if the color of the image is bright, it will be double bright
so we need to scale down the image inteinsity value (1:16)(1:21)
-average and average2 should give you a different result (2:34)
%}



%lecture 32_add_two_images
%https://www.youtube.com/watch?v=dqTtAcljH_8&list=PLAwxTw4SYaPnbDacyrK_kB_RUkuxQBlCm&index=30
%{
img1=imread('bowl_fruit.png');
img2=imread('abc.png')

imshow(img1);
disp(size(img1));

imshow(img2);
disp(size(img2));
%need to make sure their size are equal (0:19)

im_red=img(:,:,1);
imshow(im_red); 
%0:46->bright area shows high red value, darker areas are vice versa

plot(im_red(150,:))
%}


%lecture 31_color_planes
%https://www.youtube.com/watch?v=dqTtAcljH_8&list=PLAwxTw4SYaPnbDacyrK_kB_RUkuxQBlCm&index=30
%{
img=imread('bowl_fruit.png');
imshow(img);
disp(size(img));
im_red=img(:,:,1);
imshow(im_red); 
%0:46->bright area shows high red value, darker areas are vice versa

plot(im_red(150,:))
%}


%Lecture 30_crop an image
%{
img=imread('bycycle.png');
imshow(img);
disp(size(img));

cropped=img(110:310,10:160);
imshow(cropped);
%}


%{
%at a given location (row,col);
img=imrad(‘abc.png’);
imshow(img);
disp(size(img));
img(50,100);%row 50 and col 100
Relative the high value waves it is.others are comparative low
%}
