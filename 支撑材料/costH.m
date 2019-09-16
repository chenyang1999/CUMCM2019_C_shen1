function y=costH(x,h)
    for i=1:length(x)
        y(i)=1;
    end;
    y=y';
    if h==1
        y=y*1.35;
    end
    
end
