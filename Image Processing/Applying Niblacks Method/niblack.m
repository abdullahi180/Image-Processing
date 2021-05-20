
%This function Performs Niblack's method to binarize the test images.
function binarizeImage = niblack(image, neighbour_Size, k)

% This function will use Niblack's method on the image by calculating 
%a threshold for each pixel then applying it.

%  The Niblacks's fromula for calulating the threshold  =  mean + (k * standardDeviation) 
%then the intensity of the neighbourhood size inputed by manually.
   
    average_filter = fspecial('average', neighbour_Size); % this will create an average filter, that we will use to average imgage
    average_Image = imfilter(image, average_filter); % This will Average the image
    standardDevImg = stdfilt(average_Image, true(neighbour_Size)); % this will take in everage image and neighbourhood , then compute standard deviation we will use to multiply with the K
    resultK_Img = k .* standardDevImg;   %multiply K with the the standard deviation, part of niblacks method. 
    niblacks_Tvalue = double(average_Image) + resultK_Img; % set the threshold.
    binarizeImage = thresholdingIMG(image, niblacks_Tvalue);% return the result back to function
end

