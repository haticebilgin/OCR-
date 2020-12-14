%Hatice Bilgin 161201034 
%Main of OCR
%12.08.20

clear 
clc;
close all;

%----------------------------------
my_file = fopen('text7.txt', 'wt');
my_image=rgb2gray(imread('foto2.jpg'));
figure
imshow(my_image);
title('INPUT IMAGE WITH NOISE')
%----------------------------------
%NOISE REDUCTION

my_image=medfilt2(my_image,[3 3]); 
figure
imshow(my_image);
title('INPUT IMAGE WITHOUT NOISE')

%----------------------------------

se = strel('disk',2);
BW2 = imopen(my_image,se);
BW2 = imclose(BW2,se);
imshowpair(my_image,BW2,'montage')
title('INPUT IMAGE WITHOUT NOISE AND MORPHOLOGICALLY CHANGED IMAGE')
my_image=BW2;


%----------------------------------
%thresholding
counts=imhist(my_image); % histogram
N=sum(counts);

for i=1:256
    P(i)=counts(i)/N; %probability 
end

i=1;
T(i)=240;  %initial Treshold given by me
mean_1=mean(my_image(1:T(i)));
mean_2 =mean(my_image(T(i):end));

i=i+1;
T(i)=round((mean_2+mean_1)/2);

while abs(T(i)-T(i-1))>=1      
    
    w0=sum(P(1:T(i))); % Probability of class 1 (1:T)
    w1=sum(P(T(i)+1:256)); %probability of class2 (T+1 : 256)
   
    mean_1=dot([0:T(i)-1],P(1:T(i)))/w0;     % class 1  mean 
    mean_2=dot([T(i):255],P(T(i)+1:256))/w1; % class 2 mean 
    
    i=i+1;
    T(i)=round((mean_2+mean_1)/2); %update T as the average of the means 
    Threshold=T(i);
   
    img = my_image >= Threshold;
end

img=~img;

%----------------------------------
 img = bwareaopen(img,30);
figure 
imshow(img);
title('INPUT IMAGE AFTER THRESHOLDING')

%----------------------------------
load templates
global templates
word=[ ];
comp=[ ];
image_copy=img;
template_dim=size(templates,2);
while 1
    [im1, image_copy]=lines(image_copy);
   
    L= bwlabel(im1);
%       figure
%          imshow(L)
    props= regionprops(L,'BoundingBox');

    for i=1:size(props,1) 
        parca(:,:,i) = imresize(imcrop(L,props(i).BoundingBox),[42,24]);
%         figure
%         imshow(parca(:,:,i))
    end
    
    for n=1:size(props,1)
        letter=read_letter(parca(:,:,n),template_dim);
        word=[word letter];
     end

    fprintf(my_file,'%s\n',word);
    word=[ ];
    if isempty(image_copy)  
        break
    end
end
fclose(my_file);
