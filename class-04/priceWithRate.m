function out = priceWithRate(base)
%PRICEWITHRATE Adds base*(RATE) to base. 'RATE' is global (not recommended).
    global RATE    % Must also declare global inside the function
    out = base * (1 + RATE);
end

