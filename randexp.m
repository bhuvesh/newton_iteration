maxiter = 9;
    bigimg = [];
    bigrow = [];
for iter=1:maxiter
    range = 4;
    roots = [];

    for iter2=1:6
        roots = [roots (-range - i*range + (2*range)*(rand(1) + i*rand(1)))];
    end
    [img,vor] = newtonbasins(roots,range+10);
    size(img)
    size(vor)
    im2 = [img zeros(size(img,1),10,3) vor];
    bigrow = [ bigrow im2];
    if ((mod(iter,3)==0))
        disp('here');
        disp(iter);
        o = ones (20,size(bigrow,2),3);
        bigimg = [bigimg ; o; bigrow ];
        bigrow = [];
        size(bigimg)
    else
        o = ones (size(bigrow,1),20,3);
        bigrow = [bigrow o];
    end
    b = num2str(roots,2);
    b = ['./exp/' b '.png'];
    imwrite (im2,b);
end
imwrite (bigimg,'./exp/bigimage.png');
    