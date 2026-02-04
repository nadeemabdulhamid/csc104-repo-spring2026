% SOLUTION

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

  if nargin < 1
      error('At least one input (Tin) is required.');
  else if nargin < 2
      direction = 'C2F';  % default direction
  end

  direction = upper(direction);

  switch direction
    case 'C2F'
        Tout = (9/5) * Tin + 32;
    case 'F2C'
        Tout = (5/9) * (Tin - 32);
    otherwise
        error("direction must be 'C2F' or 'F2C'.");
  end

  if nargin >= 3
    % round to specified decimal places using built-in 'round'
    scale = 10^digits;
    Tout = round(Tout * scale) / scale;
  end
end

