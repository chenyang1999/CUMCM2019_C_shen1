function y=costK(x)
    for i=1:length(x)
    if (x(i)>5*60)&&(x(i)<23*60)
        y(i)=26.4;
    else
        y(i)=32.43;
    end
    end
    
     y=y';

end


