%CREATE TEMPLATES
%Letter 33+23
A=imread('A.bmp');
B=imread('B.bmp');
C=imread('C.bmp');
D=imread('D.bmp');
E=imread('E.bmp');
F=imread('F.bmp');
G=imread('G.bmp');
H=imread('H.bmp');
I=imread('I.bmp');
J=imread('J.bmp');
K=imread('K.bmp');
L=imread('L.bmp');
M=imread('M.bmp');
N=imread('N.bmp');
O=imread('O.bmp');
P=imread('P.bmp');
R=imread('R.bmp');
S=imread('S.bmp');
T=imread('T.bmp');
U=imread('U.bmp');
V=imread('V.bmp');
Y=imread('Y.bmp');
Z=imread('Z.bmp');

akucuk=imread('a_kucuk.bmp');
bkucuk=imread('b_kucuk.bmp');
ckucuk=imread('c_kucuk.bmp');
dkucuk=imread('d_kucuk.bmp');
ekucuk=imread('e_kucuk.bmp');
fkucuk=imread('f_kucuk.bmp');
gkucuk=imread('g_kucuk.bmp');
hkucuk=imread('h_kucuk.bmp');
ikucuk=imread('i_kucuk.bmp');
jkucuk=imread('j_kucuk.bmp');
kkucuk=imread('k_kucuk.bmp');
lkucuk=imread('l_kucuk.bmp');
mkucuk=imread('m_kucuk.bmp');
nkucuk=imread('n_kucuk.bmp');
okucuk=imread('o_kucuk.bmp');
pkucuk=imread('p_kucuk.bmp');
rkucuk=imread('r_kucuk.bmp');
skucuk=imread('s_kucuk.bmp');
tkucuk=imread('t_kucuk.bmp');
ukucuk=imread('u_kucuk.bmp');
vkucuk=imread('v_kucuk.bmp');
ykucuk=imread('y_kucuk.bmp');
zkucuk=imread('z_kucuk.bmp');

one=imread('zero.bmp');  
two=imread('two.bmp');
three=imread('three.bmp');
four=imread('four.bmp');
five=imread('five.bmp');
six=imread('six.bmp');
seven=imread('seven.bmp');
eight=imread('eight.bmp');
nine=imread('nine.bmp'); 
zero=imread('zero.bmp');
%-------------------------------------------------------------
letters=[A B C D E F G H I J K L M N O P R S T U V Y Z ];
letters_mini=[akucuk bkucuk ckucuk dkucuk ekucuk fkucuk gkucuk hkucuk ikucuk jkucuk kkucuk lkucuk mkucuk nkucuk okucuk pkucuk rkucuk skucuk tkucuk ukucuk vkucuk ykucuk zkucuk];
number=[one two three four five six seven eight nine zero];
character=[letters letters_mini number];
templates=character;
save ('templates','templates')

