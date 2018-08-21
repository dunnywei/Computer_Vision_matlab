%Lesson3_2A_L2_Filtering
%Lecture 1_Gaussian Noise
%{
   -we have to worry about the sigma w.r.t the range of the image (0:18)
   -if the range of image is 0 to 255, sigma 5 is possible (0:23)
   -if the range of image is 0 to 1, sigma 5 is NOT possible (0:27)
   -We have the noise in our image and want to remove it (0:35)
   -replace the value of the pixel with the average around it (0:52)
   -First ateemp at a solution in 1D (1:03)(1:12)
    -replace each pixel with an average of all the values in its neighborhood->a moving average (1:12)
%}
%code
%{
   noise=randn(size(im)).*sigma;
   output=im+noise;
%}
