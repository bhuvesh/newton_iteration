function [ image, voron ] = newtonbasins(roots, range2)
    range= [-range2, range2, -range2, range2];
    color = [1,0,0; 0,1,0; 0,0,1; 1,1,0; 0 1 1 ;  1,0,1; 0.6,0.3,0.4; 0.2,1,0.6; 1,1,1];
    imgs = 800;
    image=zeros(imgs,imgs,3); %initialize
    voron = zeros(imgs,imgs,3);
    for iter1=1:imgs
        for iter2=1:imgs
            point = (range(1) + iter1*(range(2)-range(1))/imgs + i*(range(3) + iter2*(range(4)-range(3))/imgs) );
           [r,c] = newton(roots, point);
           c2 = vorono(roots,point);
            if(c ~= Inf)
             %%c
             voron(imgs+1-iter2,iter1,:) = color(c2,:);
             image(imgs+1-iter2,iter1,:) = color(c,:);
             %%color(c)
            end
        end
    end
    size(image)
    imshow(image);
    center = cartoimg(0,range2,imgs);
    rootp = cartoimg(roots,range2,imgs);
    rootr = imgabs(roots,range2,imgs);
    f = getframe(gca);
    image = frame2im(f);
    size(image)
    
    for iter=1:size(roots,2)
        rectangle('Position',[center(1) - rootr(iter), center(2)-rootr(iter),2*rootr(iter),2*rootr(iter)],'Curvature',[1,1],'Facecolor',[1 1 1 0.3], 'LineWidth',1);
    end
    for iter=1:size(roots,2)
        rectangle('Position',[center(1) - rootr(iter), center(2)-rootr(iter),2*rootr(iter),2*rootr(iter)],'Curvature',[1,1], 'LineWidth',2);
    end
    marksize = 4;
    for iter=1:size(roots,2)
        rectangle('Position',[rootp(iter,1) - marksize,rootp(iter,2) - marksize,2*marksize,2*marksize],'Curvature',[1,1], 'LineWidth',1,'Facecolor',[1 1 1],'EdgeColor',[0 0 0]);
    end
    
    
    f = getframe(gca);
    image = frame2im(f);
    
    hold off;
    imshow(voron);
    
%     for iter=1:size(roots,2)
%     rectangle('Position',[center(1) - rootr(iter), center(2)-rootr(iter),2*rootr(iter),2*rootr(iter)],'Curvature',[1,1],'Facecolor',[1 1 1 0.3], 'LineWidth',1);
%     end
%     for iter=1:size(roots,2)
%         rectangle('Position',[center(1) - rootr(iter), center(2)-rootr(iter),2*rootr(iter),2*rootr(iter)],'Curvature',[1,1], 'LineWidth',2);
%     end
    marksize = 4;
    for iter=1:size(roots,2)
        rectangle('Position',[rootp(iter,1) - marksize,rootp(iter,2) - marksize,2*marksize,2*marksize],'Curvature',[1,1], 'LineWidth',1,'Facecolor',[1 1 1],'EdgeColor',[0 0 0]);
    end
    f = getframe(gca);
    voron = frame2im(f);
    
%                 
%     
%                 
%             
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here


end

