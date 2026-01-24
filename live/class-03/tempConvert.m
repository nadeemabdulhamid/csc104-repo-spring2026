function Tout = tempConvert(Tin, direction, digits)
%TEMPCONVERT  Convert temperature with optional parameters (overloading via nargin).
%   Tout = TEMPCONVERT(Tin)                % default: Celsius -> Fahrenheit, no rounding
%   Tout = TEMPCONVERT(Tin, direction)     % direction: 'C2F' or 'F2C'
%   Tout = TEMPCONVERT(Tin, direction, digits)  % round to 'digits' decimals
%
%   Examples:
%     tempConvert(25)                % 77            (C -> F)
%     tempConvert(77,'F2C')          % 25            (F -> C)
%     tempConvert(25,'C2F',2)        % 77.00         (rounded to 2 decimals)
%     tempConvert(98.6,'F2C',1)      % 37.0
%

  if (nargin == 1)
    direction = 'C2F';
  end

  if upper(direction) == 'C2F'
    Tout = (Tin * 9 / 5) + 32;
  else
    Tout = (Tin - 32) * 5 / 9;
  end

  if nargin == 3
    mult = 10^digits;
    Tout = round( Tout * mult ) / mult;
  end

end
