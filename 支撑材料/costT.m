function y=costT(x)
    for i=1:length(x)
    if (x(i)>5*60)&&(x(i)<23*60)
        y(i)=0.15;
    else
        y(i)=0.45;
    end
    end
     y=y';

end


