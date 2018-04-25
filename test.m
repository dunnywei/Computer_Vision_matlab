%Lecture 30_crop an image
img=imread('bycycle.png');
imshow(img);
disp(size(img));

cropped=img(110:310,10:160);
imshow(cropped);



%{
%at a given location (row,col);
img=imrad(‘abc.png’);
imshow(img);
disp(size(img));
img(50,100);%row 50 and col 100
Relative the high value waves it is.others are comparative low
%}
