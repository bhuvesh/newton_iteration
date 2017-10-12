function [ val ] = poly( roots,z)
%POLY Summary of this function goes here
%   Detailed explanation goes here
val = 1;
for iter=1:size(roots)+1
    val = val*(z - roots(iter));
end

