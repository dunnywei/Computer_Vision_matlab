%lecture 34->refer to udacity Lecture 25:Multiplying by a scalar demo
%https://www.youtube.com/watch?v=dqTtAcljH_8&list=PLAwxTw4SYaPnbDacyrK_kB_RUkuxQBlCm&index=30
clc;
clear all;
close all;
img1=imread('baboon.bmp');
img2=imread('bird.gif');

result=scale(img1,img2,0.75);
figure;
imshow(result);
%{
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

result=img2*3
figure;
imshow(result);

figure;
imshow(img2);
%}
%---------------------refer to udacity------------------
%{
Lecture 26
-Blending effect, we have to make sure the constant 
of mutliplying two images =1 (0:39) as
result=0.25*img1+0.75*img2;
-where 0.75+0.25=1
-it is a.k.a alpha blending (0:37) in viewing quiz

in quiz->

function output = blend(a, b, alpha)
    output = alpha.*a+(1-alpha).*b;
endfunction


%{
Lecutre 25
result=value.*img2;
   %the dot ensure the element wise multiplication (1:26)
%}

%--------------------------refer to youtube-------------
%{
Lecture 33 or Lecture 24 from udacity
-After multiplying 0.5(=dividing by 2), the intensity becomes darker (0:29)
-After multiplying 1.5, it becomes brighter. There are wash out effect in
certain area (0:45)
-This is due to the image value above 255 is truncated with that limit
(0:49)(0:52)
-function (1:20)

-(183/2+152/2)=92+76=168
-(183+152)/2=335/2 no due to the size limit of 0 to 255 as unsign 8bit integer
therefore it will be like 255/2 in (viewing quiz)
%}



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
img=imrad(â€˜abc.pngâ€™);
imshow(img);
disp(size(img));
img(50,100);%row 50 and col 100
Relative the high value waves it is.others are comparative low
%}


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
