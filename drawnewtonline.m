function drawnewtonline(roots,init,imgs,range2)
    pts = newtonline(roots,init);
    pts = cartoimg(pts,range2,imgs);
    drawline(pts,true);
end


