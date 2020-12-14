function [fl, rem]=lines(input)

[row, col]=find(input); 
a=min(row);
b=max(row);
c=min(col);
d=max(col);
input=input(a:b,c:d);%Crop

% figure 
% imshow(input)
[row2,~]=size(input);
for i=1:row2
    
    sum_lines=sum(input(i,:)); %tek tek tum satýrlarýn toplamlarýna bakýldý

    if sum_lines~=0 
        fl=input;
        
    else
        nm=input(1:i-1, :); 
        fl = clip(nm);
    end
    
    if sum_lines~=0
        rem=[ ];
        
    else
        rm=input(i:end, :); 
        rem = clip(rm);
        break
    end
    
end


function out=clip(in)
[row, col]=find(in); 
a=min(row);
b=max(row);
c=min(col);
d=max(col);
out=in(a:b,c:d);