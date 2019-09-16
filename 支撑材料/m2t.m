function y=m2t(x)
    for i=1:length(x)
    if (x(i)>5*60)&&(x(i)<23*60)
        y(i)=0.67;
    else
        y(i)=0.67*1.3;
    end  
    end
%     size(x)
%     size(y')
     y=x./y';
%      size(y)
end


