clear;clc;
read_airplane;
airplane = sortrows(airplane,'data','ascend');
airplane = sortrows(airplane,'T','ascend');
%  airplane = table2cell(airplane);
 CAN_show = airplane(find(airplane.T=='CAN'),:);
 CAN_day = CAN_show(find(CAN_show.data==20180415'),:);
 CAN_day = sortrows(CAN_day,'E');