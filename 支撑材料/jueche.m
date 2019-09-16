T=1:5:60*24;
T=T';
JC=table(T);
JC.T=T;
JC.costK=-costK(T);
JC.P=P(T);
JC.SJCB=JC.P-JC.costK;
JC.JXSJ=m2t(JC.SJCB);
jc=zeros(1,length(T));
% air_day.E(1)
for i=1:length(air_day.data)
    if air_day.data(i)==Today
        DT=i;
    end
end
 for j=1:length(air_day.data)
         if air_day.data(j)>Today
             air_day.E(j)=air_day.E(j)+24*60;
         end
 end
for i=1:length(T)
    jxsj=JC.JXSJ(i);
    qssj=JC.T(i);
    begin=1;
     for j=1:length(air_day.data)
        if air_day.E(j)>qssj
            continue
        end
        begin=j;
    end
    begin=begin+1;
    if air_day.E(begin)-qssj>jxsj
        jc(i)=-1;
        continue
    end
    for j=begin:DT
        if air_day.E(j)-qssj<jxsj
%             air_day.clxq(j)
            jc(i)=jc(i)+air_day.clxq(j);
            jxsj=jxsj-1.*air_day.clxq(j);
        else
            continue
        end
    end    
end
JC.jc=jc';
JC
bar(JC.T/60,JC.jc)
axis([0 24 -1 150]); 
set(gca,'xtick',0:1:24) 
set(gca,'ytick',0:10:150) 
xlabel('时间');
ylabel('N_{max}'); 
% legend('司机决策模型');