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
%Lecture 32_effect of sigma in Gaussian noise
%{
-magnitude of noise is defined by sigma (0:08)
-We only look at the function of noise and ignore the image (0:15)
%}
%Lecture 31:Quiz_Generate Gaussian noise
%code
%{
% Generate Gaussian noise
noise = randn([1 10000]);
[n x] = hist(noise, linspace(-3, 3, 21));
figure;
plot(x, n);

% Generate Uniform noise
noise = rand([1 10000]);
[n x] = hist(noise, linspace(-1, 1, 21));
%disp([x; n]);
figure;
plot(x, n);

% TODO: Try generating other kinds of random numbers.
%       How about a 2D grid of random Gaussian values?


%}

%Lecture 30:Generate Gaussian noise
%{
-Since these are randon numbers, we calles this as the noise (0:51)
-randn draws the gausssian or a random normal distribution (0:58)
-Gaussian distrubtion
   -The center or mean for randn is zero the standard deviation is one (1:10)
   -Standard deviation is a measure for how spread out the distribtuion it is (1:19)
   -Getting the number close to 0 will be likely (1:27)
   -Getting the number far away from 0 will be less likely(1:31)
   -How do we know if the randn is sampling from Gaussian Distributin (1:36)?
   -If we have enough samples among bins and we counted how many numbers landed in each bin (1:40)
   -We will see a pattern simliar to the probably distribution (1:48)
   -See code2 (1:52)
   -see code3 for more bins (3:06)->bin center is the same as expected (3:27)
   -see code4->for bette resolution around x axis (3:45) due to spikese we need more data
   -see code5 (3:51)->more data/more sample (4:01)
   -In addition to randn, we can find rand(4:14)-> for uniform distribution
                                      randi(4:19)->generate random integers (4:19)  
%}
%code5
%{

some_matrix=randn([1 10000]);
[n,x]=hist(some_matrix, linspace(-3,3,21));  

display(x: n); 
plot(x,n);
%}


%code4
%{

some_matrix=randn([1 100]);
[n,x]=hist(some_matrix, linspace(-3,3,21));  
%Why there is a spike? (3:48) solution, we need more data

display(x: n); 
plot(x,n);
%}


%code3
%{

some_matrix=randn([1 100]);
[n,x]=hist(some_matrix, linspace(-3,3,7)); %(3:17) 
%7 different numbers including zero for linespace (3:21)

display(x: n); 
plot(x,n);
%}
%code2
%{

some_matrix=randn([1 100]);
[n,x]=hist(some_matrix, [-3 -2 -1 0 1 2 3]);
%n=# of elements
%x=bin center
display(x: n); (2:32)
%center has the high count and low count in the end(2:41) or zero count in the end (2:42)
%Same behavior will occur no matter how many times you run it (2:44)
plot(x,n);
%}


%code1
%{
%generate gausian noise %(0:03)
%randn()

some_number=randn();
display(some_number); %(0:09)

some_matrix=randn([1 5]);%1 row and 5 columns (0:37)
display(some_matrix); (0:46)

%}



%Lecture 29:Image diference quiz
%{
1)z=abs(abs(y)-abs(x)) 
%Doens't make any difference since a and b are +ve integers anyway so give us the previous result(0:09)
2)(a-b)+(b-a)
%gives +ve value for a >B or 0 if b<a (0:20) for a-b
%(b-a) will be vice versa (0:27)
3)convert to uint16
%It is still an unsigned value so doesn't make any differene (0:50)
4)convert to floating point
Yes it works(0:52) since it can store -ve value 
%}
%code
%{
clc;
clear all;
close all;


dolphin=imread('dolphin.png');
bicycle=imread('bicycle.png');
diff=dolphin-bycyle;
imshow(diff);
abs_diff=abs(dolphin-bycyle);
imshow(abs_diff);

%we can use image package to preserve the value

pkg load; %(1:19)

abs_diff2=imabsdiff(dolphin-bycyle) %(1:33)
imshow(abs_diff2); 

%}




%Lecture 28:Image diference Demo
%{
-Greater value in the difference image signify greater difference between two images (0:16)
-Bright area indicates where two images varing more (0:21)
-if we swtich order as diff=bicyle-dlphin; the result will be diiferent->SO order matter (0:26)
-since a-b vs b-a will be different (0:47)
-When we talking about the difference between two images, we don't care care about the sign of the
difference but only the magnitude (1:04)=We are interested in the absolute difference between two images
(1:11)
-So let's see the values being subtracted (1:35)
->20(from bicycle) - 56 (dolphin) (1:38)
->theoretically, the result should be -36 (1:43)
->since we are using unit8 so this number can only be represented as 0 to 255 since it is unsigned (1:49)
->so it is truncated to 0 (1:53)
->Even in the absolute difference case, the subtraction is performed first (1:59)
->So the intermediate result will be the same as the original difference (2:04)
->The number is truncated already so the absolute value operator won't make any difference (2:09)
->So we will see what we can do about this in nect section
%}
%Code
%{
dolphin=imread('dolphin.png');
bicycle=imread('bicycle.png');
diff=dolphin-bycyle;
imshow(diff);
abs_diff=abs(dolphin-bycyle);
imshow(abs_diff);
%}

%Lecture 27:Common Type of Noise
%{
-We will introduce the concept of noise.
-Noise is just another function that is comibeind with the original function to get a new function (0:18)
-I_prime(x,y)=I(x,y)+n(x,y) 
-Different type of noise
-Salt and peper noises (0:48)->random occurrences of black and white pixels
-Impulse noise->random occurance of white pixel (1:04)
-Gaussian noise->variation in intensity drawn from the gausian normal distribution (1:13)
   -we basically assume that at every pixel we take the original image and stick to another spot is distributed
   from normal or guassian distribution (1:29)  
-Gaussian noise in matlab->
noise=randn(size(im)).*sigma (1:40)
output=img+noise (2:16)
-noise with the mean of 0 standard deviation of 1->1:59
-scale by sigma that will spread out and make it bigger (2:04)
-
%}

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
