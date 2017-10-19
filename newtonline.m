function [steps] = newtonline(roots,init)
eps = 1.0e-3;    
z1 = init+5;
z2 = init;
cnt = 1;
steps= z2;
while ((abs(z2-z1)>eps) & (cnt<1000) )
    z1 = z2;
    z2 = z1 - newtonstep(roots,z1);
    cnt = cnt+1;
    steps=[steps z2];
end
z = Inf;
m = Inf;
inter = Inf;

s = size(roots,2);
for iter=1:s
    %%iter
    if ( abs(roots(iter) - z2) < m)
        
        m = abs(roots(iter) - z2);
        z = z2;
        inter = iter;
    end
end
if (z == Inf)
   steps=[];
   return;
end



end


