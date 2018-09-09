%Lesson3_2A_L2_Filtering
%Lecture 2_Gaussian Noise
%{
   -we have to worry about the sigma w.r.t the range of the image (0:18)
   -if the range of image is 0 to 255, sigma 5 is possible (0:23)
   -if the range of image is 0 to 1, sigma 5 is NOT possible (0:27)
   -We have the noise in our image and want to remove it (0:35)
   -replace the value of the pixel with the average around it (0:52)
   -First ateemp at a solution in 1D (1:03)(1:12)
    -replace each pixel with an average of all the values in its neighborhood->a moving average (1:12)
    -Given [1...N] with various pulse
      -for [10 to 20] is replaced the average of 10 to 20 (1:22)
      -At the end, I will get sth smoother than the original (1:31)
      -Sommoth means that we average the values locally (done)
%}
%code
%{
   noise=randn(size(im)).*sigma;
   output=im+noise;
%}
----------------------------------------------------
%Lecture 3_Averaging assumption
%{
  -We are taking about the average from [10 to 20] so what assumption are we making about the picture ?(0:23)
  -Assumpption
   ** 1)The real/true value of pixels are similar to the true value of pixels nearby (0:34)
   ** 2)Each noise added to each pixel is done independently(0:58)
      -Sometimes the noise is up and sometimes is done so if I take the average, I will get 0 (1:10)
%}
----------------------------------------------------
%Lecture 4_noise quiz
%{
-Q:If noise is just a function added to an images, we could remove the noise by subtraccting the noise again. This is the operation reversible
    b)True but we dno't know the noise function so we can't actually do the subraction.
 -We only the statistic of the noise (0:17)
    c)False. Additive noise destroys the information in the image->Not true. If we only have the addition of the noise(really tiny) and result 
  between modified image with noise (0:27) and the orignal image are almost the same->This statement is wrong
-If we have a limit of [0 to 255] or [0 to 1], if the noise push you beyond the limit, so you clip. THEN we lost the info (0:40)
  -Sometimes when you add the noise, you lost the linearity (0:44).
 -In general, We can't remove the noise since we don't know what it was (0:49). If we know it, we can sutract (0:51)
%}
-----------------------------------------------------
%Lecture 5_weighted moving average
 -Let's revisit our weighted average
 -Instead of averaging the local pixelm Let's think it as the set of weight (0:14)
 -We are going to weight the pixel by some sets of weight from [10 to 20] (0:19)
 -We will combine with weight to come up a new value (0:23)
 -If all window are 5th long so we will weight [1/5 1/5 1/5 1/5 1/5] (0:33) so it will be uniformlly distributed (0:35)
->
 -**Our assumption is nearby pixels are related to my value (0:43)
 -**The more nearby you are, the more related you are (0:50)
 -The pixel cloed to me should contribute more to the average (0:54)
 -So we choose [1,4,6,4,1]/16 (1:06) as the non-uniform weight (1:12)
 -Change from uniform to non-uniform (1:20)
 -Non-Uniform is smoother than the uniform (1:33)
 -Non-Uniform weight corresponding to the assumption of more nearby pixel
 it is, more weight it should be (1:49)
 
%code
%{
   noise=randn(size(im)).*sigma;
   output=im+noise;
%}
--------------------------------------------
%Lecture 6_moving average quiz
To do the moving average compuation, the # of weight should be 
1)odd->makes i teasier to have a midle pixel
     -A:PUt my set of weight on the center of tover the pixel that I am going to change (0:11). 
Otherwise, we need to put it bettween the set of weights and average them that way
We tends to use odd symmetric weight mask.

--------------------------------------------
%Lecture 7_compare filter results
->Q:10 random intergers and plot them in a line plot  (0:10).Then filter the vector with a uniform filter
   of length five and plot the result.
   -also do the same with a non-uniform weighted filter
->Answer
  -Blue line is oritinal since it has the biggest extreme
  
  -green is uniform filter. In the third to  fourth point, the slope of original one decreased
   alot but the one in green increase a little (0:16).
    -the slope of fifth to sixth  in blue increase but the green one decresead(dip)
    -***THis indicates values other than central value at each point affecting the results too much. (0:26)
    -***Looking at the the first unusual spike at 4th one(0:30) in greeb, it seems that the peaks on both sides
    are contributing as much as the central value(0:33) (??)
    -goes through Lecture 5 again (Starts here)
  -pink is  
    -un-uniform weight [1 4 6 4 1]/16
->original  [7  , 10,  5,  1    ,    4,  8,    4,    4,   5,   5]
-            1st  2nd 3rd  4th      5th 6th    7th  8th  9th, 10th
result green[4  ,  5,  5  ,6    ,    5, 4,     5,   and so on   ]
    -
 
 
 
 
 
 
