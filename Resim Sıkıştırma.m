
x=[1 -5 ;0 2];
img1=imread('kafa.jpg');
img2=rgb2gray(img1);
img3 = double(img2);

[M,N] = size(x);

output= [];

for i = 0 : M - 1
    for j = 0 : N - 1
        if (i == 0) 
                si = 1 / sqrt(M); 
        else
            si = sqrt(2) / sqrt(M); 
        end
        if (j == 0) 
            sj = 1 / sqrt(N); 
        else
            sj = sqrt(2) / sqrt(N); 
        end
        
        st = 0;
        for k = 0: M - 1
            for l = 0: N - 1
                s = x(k + 1, l + 1) * cos((2 * k + 1) * i * pi / (2 * M)) *  cos((2 * l + 1) * j * pi / (2 * N)); 
                    st = st + s; 
            end
        end
        output(i + 1, j + 1) = si * sj * st; 
    end
end
%  figure , imshow(uint8(output))
%  d=dct2(img3);
%  figure , imshow(uint8(d))
%  B = transpose(output)
%  B1=dct2(B);
%  figure , imshow(uint8(B1))

B = transpose(output);


% y10=angle(B(1:10, 1:10));
% y25= angle(B(1:25,1:25));
% figure(1)
% imshow(angle(B))
% figure(2)
% imshow(idct2(B))
% figure(3)
% imshow(uint8(idct2(y10)))
% figure(4)
% imshow(idct2(y25))
% figure(5)
% mesh(B)

