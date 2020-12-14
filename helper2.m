function mat = helper2(mat)
%B=rgb2gray(imread('A.jpg'));
mat=imbinarize(mat);
mat=~mat;
mat = bwareaopen(mat,30);
A_yeni = regionprops(mat, 'BoundingBox');%detect edges
mat = imcrop(mat, A_yeni.BoundingBox); %crop image
mat = imresize(mat, [42 24]);

end
