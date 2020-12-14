function letter=read_letter(image,template_dim)


global templates
y=[ ];

for n=1:template_dim
    x=corr2(templates{1,n},image);
    y=[y x];
end

[~,index] = max(y);
harf=index;
% disp((harf))
%---------------------------------------------
%  letter = char('A'-1+harf)

 lookup = ['A', 'B' ,'C', 'D','E', 'F','G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O' ,'P', 'R' ,'S' ,'T' ,'U', 'V' ,'Y','Z','a', 'b' ,'c', 'd','e', 'f','g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o' ,'p', 'r' ,'s' ,'t' ,'u', 'v' ,'y','z','1','2','3','4','5','6','7','8','9','0'];
 letter = lookup(harf);

end
