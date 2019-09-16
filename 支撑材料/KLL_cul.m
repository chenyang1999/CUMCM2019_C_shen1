air_day.costT=costT(air_day.E);
air_day.costW=costW(air_day.E,0);
air_day.costH=costH(air_day.E,0);
air_day.sjxq=fix(air_day.sz.*air_day.costT.*air_day.costW.*air_day.costH)
air_day.clxq=fix(air_day.sjxq/1.5)
clxq=air_day.clxq;
lj=clxq(1);
for i=2:length(clxq)
    lj(i)=lj(i-1)+clxq(i);
end
lj=lj';
air_day.lj=(lj);
% plot(air_day.E/60,air_day.clxq)
% set(gca,'xtick',0:1:24) 
T=0:5:60*24;
T=T';
JC=table(T)
JC.T=T;
JC.costK=costK(T);
JC.P=P(T);
