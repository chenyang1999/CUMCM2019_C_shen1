clear;clc;
read_airplane;
airplane = sortrows(airplane,'T','ascend');
airplane = sortrows(airplane,'E','ascend');
airplane = sortrows(airplane,'data','ascend');
airplane = unique(airplane);
clean