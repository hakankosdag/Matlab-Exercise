x=[ 6 5 4 ; 9 8 7 ; 3 2 1];
img1=imread('kafa.jpg');
img2=rgb2gray(img1);
img3 = double(img2);
[M,N] = size(img3);

Output = [];

for i = 0 : M - 1
    for j = 0 : N - 1
        P = 0;
        for k = 0: M - 1
            for l = 0: N - 1
                Y = img3(k + 1, l + 1) * exp(-1i * 2 * pi * (i*k/M + j*l/N)); 
                P = P + Y; 
            end
        end
        Output(i + 1, j + 1) = P; 
    end
end
% Output=abs(fftshift(Output));
% figure ,imshow(uint8(Output))

B = transpose(Output);


y10=angle(B(1:10, 1:10));
y25= angle(B(1:25,1:25));
figure(1)
imshow(angle(B))
figure(2)
imshow(idct2(B))
figure(3)
imshow(uint8(idct2(y10)))
figure(4)
imshow(idct2(y25))
figure(5)
mesh(B);
