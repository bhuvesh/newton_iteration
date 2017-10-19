function drawline(points,withp)

for iter=1:size(points,1)-1
    line([points(iter,1),points(iter+1,1)],[points(iter,2),points(iter+1,2)],'Color','white','LineWidth',2);
end

if (withp)
    marksize=3;
    for iter=1:size(points,1)
    rectangle('Position',[points(iter,1) - marksize,points(iter,2) - marksize,2*marksize,2*marksize],'Curvature',[1,1], 'LineWidth',1,'Facecolor','k','EdgeColor',[0 0 0]);
    end
end
