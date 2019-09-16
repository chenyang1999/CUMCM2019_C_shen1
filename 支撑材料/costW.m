function y=costW(x,w)
    for i=1:length(x)
        y(i)=1;
    end
    y=y';
    if w==1
        y=y*0.65;
    end
     if w==2
        y=y*0.3;
    end
    
end
