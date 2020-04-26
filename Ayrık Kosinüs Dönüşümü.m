% img1=imread('kafa.jpg');
% img2=rgb2gray(img1);
% img3 = double(img2);

h=[0 1 0; 1 -2 1; 0 1 0];
x=[3 -1;1 -3];

H=dct2(h);
s=zeros(3,3);
s(2:3,1:2)=H(2:3,1:2);

c=idct2(s);








% imgs=zeros(100,100);
% imgs(1:40,1:40)=con(1:40,1:40); 
% output=idct2(imgs);


% figure , imshow(img2)
% figure , imshow(uint8(output))