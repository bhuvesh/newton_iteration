function [ image ] = newtonbasins(roots, range)
    color = [1,0,0; 0,1,0; 0,0,1; 1,1,0; 0 1 1 ;  1,0,1; 0.6,0.3,0.4; 0.2,1,0.6; 1,1,1];
    imgs = 300;
    image=zeros(imgs,imgs,3); %initialize
    for iter1=1:imgs
        for iter2=1:imgs
            point = (range(1) + iter1*(range(2)-range(1))/imgs + i*(range(3) + iter2*(range(4)-range(3))/imgs) );
           [r,c] = newton(roots, point);
            if(c ~= Inf)
             %%c
             image(imgs+1-iter2,iter1,:) = color(c,:);
             %%color(c)
            end
        end
    end
    for iter=1:size(roots,2)
        r = floor(imgs*(imag(roots(iter))-range(3))/(range(4)-range(3)))
        c = floor(imgs*(real(roots(iter))-range(1))/(range(2)-range(1)))
        for iter2=-5:5
            for iter3=-5:5
                image(min(imgs,max(1,iter2+r)),min(imgs,max(1,iter3+c)),:) = [1,1,1];
            end
        end
    end
    
                
    
                
            
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here


end

