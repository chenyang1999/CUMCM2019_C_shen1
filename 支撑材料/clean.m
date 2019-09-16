%clean
% airplane = unique(airplane);
toDelete = 0
j=1
for i=2:height(airplane)
    if airplane.mz(i)==airplane.mz(i-1) &&airplane.data(i)==airplane.data(i-1) &&airplane.E(i)==airplane.E(i-1) && airplane.B(i)==airplane.B(i-1) &&airplane.F(i)==airplane.F(i-1) && airplane.T(i)==airplane.T(i-1) &&airplane.jx(i)==airplane.jx(i-1)
        toDelete(j) = i;
        j=j+1;
    end
end
toDelete=toDelete'
airplane(toDelete,:) = [];
sum(toDelete)