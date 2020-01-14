function a = regfunc(x,y,m)
    a = fliplr(polyfit(x,y,m))';
end
