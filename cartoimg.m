function [impoints] = cartoimg(roots,range2,imgs)
range= [-range2, range2, -range2, range2];
impoints = ones(size(roots,2),2);
for iter=1:size(impoints,1)
    impoints(iter,2) = floor(imgs+1 - imgs*(imag(roots(iter))-range(3))/(range(4)-range(3)));
    impoints(iter,1) = floor(imgs*(real(roots(iter))-range(1))/(range(2)-range(1)));
%CARTOIMG Summary of this function goes here
%   Detailed explanation goes here

end
