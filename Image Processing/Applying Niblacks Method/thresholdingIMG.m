
function thresh_matrix = thresholdingIMG(img_matrix, threshold)
%ThresholdingIMG takes in img_matrix and a threshold. 
% It would look at each pixel and if that specific pixel intensity
% (neiorhood lvl) is smaller thann the threshold value then that pixel will be black;
%However, if the pixel intensity is  not smaller than the threshold and it is
%the same or more than the threshold then the pixel will be white.
    thresh_matrix = img_matrix;
    % this method is creating a lower threshold
    thresh_matrix(thresh_matrix<threshold) = 0;
    %the maximim threshold is normally 255
    thresh_matrix(thresh_matrix>threshold | thresh_matrix == threshold) = 255;
end

