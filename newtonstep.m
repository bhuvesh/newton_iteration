function [ val ] = newtonstep( roots,z)
%POLY Summary of this function goes here
%   Detailed explanation goes here
val = 0;
for iter=1:size(roots,2)
    val = val + 1.0/(z - roots(iter));
end
val = 1/val;

