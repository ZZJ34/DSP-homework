function Xb = xb(n,a,f)
for i = 1:length(n)
    if n(i) >= 0 && n(i) <= 15
    Xb(i) = exp(-a*n(i)) * sin (2 * pi * f * n(i));
    else
    Xb(i) = 0;
    end
end
