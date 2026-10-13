function y = matfunc(x)
% MATFUNC apskaiciuoja reiksme pagal salyga:
% y = -sin(x), kai x < 0
% y = sin(x), kai x >= 0
% naudojimas: y = matfunc(x);

    y = sin(x);
    y(x < 0) = -sin(x(x < 0));

end