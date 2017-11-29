maxiter = 100;

meanb = [1 1];
for iter0 = 3:20
     prob = [];  
    for iter=1:maxiter
        range = 4;
        roots = [];

        for iter2=1:iter0
            roots = [roots (-range - i*range + (2*range)*(rand(1) + i*rand(1)))];
        end
        c = overlapprob(roots,range+10);
%         display(c);
        prob = [prob c];

    end
    display (iter0);
    display (mean(prob));
    meanb = [meanb mean(prob)];
end
meanb
    