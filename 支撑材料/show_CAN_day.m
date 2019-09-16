Today=20180416
air_show = airplane(airplane.T=='CAN',:);
air_show.E = fix(air_show.E/100)*60+mod(air_show.E,100);
air_show.B = fix(air_show.B/100)*60+mod(air_show.E,100);
air_day = air_show(Today<=air_show.data&air_show.data<=Today,:);
air_day = sortrows(air_day,'jx');
air_day = sortrows(air_day,'E');
air_day = sortrows(air_day,'data');



