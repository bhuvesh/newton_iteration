function drawline(points,withp)

for iter=1:size(points,1)-1
    line([points(iter,1),points(iter+1,1)],[points(iter,2),points(iter+1,2)],'Color','k','LineWidth',2);
end

if (withp)
    marksize=3;
    for iter=1:size(points,1)
    rectangle('Position',[points(iter,1) - marksize,points(iter,2) - marksize,2*marksize,2*marksize],'Curvature',[1,1], 'LineWidth',1,'Facecolor',[1 1 1]*(iter/size(points,1)),'EdgeColor',[1 1 1]*(iter/size(points,1)));
    end
end
