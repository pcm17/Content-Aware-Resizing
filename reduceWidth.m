function [reducedColorImage,reducedEnergyImage] = reduceWidth(im, energyImage)
%%% Reduces the width of an image and it's energy image by carving seams
%%% through lowest energy, vertical path
%%% image "lands" in the second image
%%% Arguments:      1. image
%%%                 2. energy image
%%%
%%% Returns:        1. reduced color image
%%%                 2. reduced energy image
    reducedColorImage = im;
    % Determine optimal seam based on cumulative minimu energy map
    M = cumulative_minimum_energy_map(energyImage, 'VERTICAL');
    seam = find_optimal_vertical_seam(M);
    
    row = reducedColorImage(1,:,:);
    row(:,seam(1),:) = [];
    newI = row;
    for s = 2:length(seam)
        row = reducedColorImage(s,:,:);
        row(:,seam(s),:) = [];
        newI= [newI; row];
    end
    %}
    reducedColorImage = newI;
    reducedEnergyImage = energy_image(reducedColorImage);

end 