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
