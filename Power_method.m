a = [-7 -6 2;-6 -8 -4;2 -4 -12];
vect = [1;0;0];
lam = 0;
cprev = 0;
while 1
    vect = a*vect;
    max = -1;
    j = 1;
    for i = 1:3
        if abs(vect(i)) > max
            j = i;
            max = abs(vect(i));
        end
    end
    lam = vect(i) %#ok<NOPTS>
    vect = vect/lam %#ok<NOPTS>
    c = round(lam,4);
    if cprev == c
        break
    end
    cprev = c;
end