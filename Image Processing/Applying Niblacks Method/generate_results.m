clear;
% This is Calling the file that will load the greyscale input images
%load_greyImages;
cd 'images\test_images'; %location of the input images
%rgb2gray converts the image RGB to the grayscale image. then saving to variable relevant etc(PR4 ) 
PR4 = rgb2gray(imread('PR4.png'));
HW1 = rgb2gray(imread('HW1.png'));
PR6 = rgb2gray(imread('PR6.png'));
HW8 = rgb2gray(imread('HW8.png'));

cd ../../;

k = -0.2;
%K will  be set at -0.2, as recomended by wayne Niblack


%binarizing images using Niblack's method, with neigbourhood size passed in. required for niblacks method. 
PR4NiBlackMethod = niblack(PR4,  895, k);
HW1NiBlackMethod = niblack(HW1 ,875, k);
PR6NiBlackMethod = niblack(PR6, 965, k);
HW8NiBlackMethod = niblack(HW8, 435, k);

clear k; 
% this clears k from memory



%The matlab code below displays the test images binarized using niblacks method with diffrent neighnbouthood sizes size.
figure, image(PR4NiBlackMethod), axis off, colormap gray(2), title('PR4 binarized with neighbourhood size of 895');
figure, image(HW1NiBlackMethod), axis off, colormap gray(2), title('HW1  binarized  with a neighbourhood size of 875');
figure, image(PR6NiBlackMethod), axis off, colormap gray(2), title('PR6  binarized with a neighbourhood size of 965');
figure, image(HW8NiBlackMethod), axis off, colormap gray(2), title('HW8  binarized  with a neighbourhood size of 435');

