function y=costT(x)
    for i=1:length(x)
    if (x(i)>5*60)&&(x(i)<23*60)
        y(i)=0.15;
    else
        y(i)=0.45;
    end
    y=y';
    end
end

function y=costW(x,w)
    for i=1:length(x)
        y(i)=1
    end
    y=y';
    if w==1
        y=y*0.65
    end
     if w==2
        y=y*0.3
    end
    
end

function y=costH(x,h)
    for i=1:length(x)
        y(i)=1
    end
    y=y';
    if h==1
        y=y*1.35
    end
    
end
