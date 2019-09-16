function y=P(x)
    for i=1:length(x)
    if (x(i)>5*60)&(x(i)<23*60)
        y(i)=25.4;
    else
        y(i)=39.83;
    end
    y=y';
    end
end