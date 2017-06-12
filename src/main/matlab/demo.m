%%% Experiments with content aware resizing using seam carving
%%% ****************************************************************
%%% Peter McCloskey
%%% CS 1675 Intro to Computer Vision, University of Pittsburgh 2017
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
image_name = 'andie1.jpg';
image_path = ['images/' image_name];
image = imread(image_path);
image = imresize(image,0.5);
energyImage = energy_image(image);
nSeams = 20;
reducedColorImage = image;
reducedEnergyImage = energyImage;
for i = 1:nSeams
    [reducedColorImage,reducedEnergyImage] = reduceHeight(reducedColorImage, reducedEnergyImage);
    [reducedColorImage,reducedEnergyImage] = reduceWidth(reducedColorImage, reducedEnergyImage);
   
    if mod(i,3) == 0
        imshow(reducedColorImage);
    end
end
%%
imshow(reducedColorImage);
title('Final Reduced COLOR Image');
figure,imshow(image);
title('Original COLOR Image');
