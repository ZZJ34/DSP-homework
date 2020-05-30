function Xa = xa(n,p,q)
for i = 1:length(n)
    if n(i) >= 0 && n(i) <= 15
    Xa(i) = exp(-(n(i)-p)^2/q);
    else
    Xa(i) = 0;
    end
end


