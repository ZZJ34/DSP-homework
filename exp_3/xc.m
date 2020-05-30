function Xc = xc(n)
for i = 1:length(n)
    if n(i) >= 0 && n(i) <= 3
        Xc(i) =  n(i);
    elseif n(i) >= 4 && n(i) <= 7
        Xc(i) =  8 - n(i);
    else
        Xc(i) = 0;
    end
end
