function Xd = xd(n)
for i = 1:length(n)
    if n(i) >= 0 && n(i) <= 3
        Xd(i) =  4 - n(i);
    elseif n(i) >= 4 && n(i) <= 7
        Xd(i) =  n(i) - 4;
    else
        Xd(i) = 0;
    end
end