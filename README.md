# Seam Carving for Content Aware Resizing
Chooses the "lowest energy" pixel in each row or column to remove as a way to resize the image and hopefully leave the content of interest unchange. This method works quite well for landscape and scenery images like 'mall.jpg' and 'prague.jpg', but does not perform well on images with people wearing black, like 'andie_lookout.jpg'

To resize any image you would like:
1. Add your image to the 'images' directory
2. Update the variable 'image_name' in 'demo.m' to be the filename of your choice
3. Run 'demo.m' script in Matlab2016b or later
