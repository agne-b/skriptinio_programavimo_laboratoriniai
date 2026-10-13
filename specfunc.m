function y = specfunc(varargin)
% SPECFUNC priklausomai nuo argumentu skaiciaus atlieka skaiciavimus
% naudojimas: y = specfunc(x1) arba y = specfunc(x1, x2)

    kiekis = nargin;

    if kiekis == 1
        x1 = varargin{1};
        y = x1.^2;

    elseif kiekis == 2
        x1 = varargin{1};
        x2 = varargin{2};

        rezultatas1 = x1.^2;
        rezultatas2 = x2.^3;

        y = max(rezultatas1, rezultatas2);
    else
        error('reikia pateikti 1 arba 2 argumentus.');
    end
end 
