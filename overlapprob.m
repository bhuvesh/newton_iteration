function [ prob ] = overlapprob(roots, range2)
    range= [-range2, range2, -range2, range2];
    imgs = 400;
    same = 0;
    diff = 0;
    for iter1=1:imgs
        for iter2=1:imgs
            point = (range(1) + iter1*(range(2)-range(1))/imgs + i*(range(3) + iter2*(range(4)-range(3))/imgs) );
           [r,c] = newton(roots, point);
           c2 = vorono(roots,point);
            if(c ~= Inf)
             %%c
             if (c==c2)
                 same = same + 1;
             else
                 diff = diff + 1;
            end
        end
        end
    end
    prob = same/(same + diff);
end

