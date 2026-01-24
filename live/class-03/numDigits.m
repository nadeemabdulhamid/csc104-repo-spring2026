function digits = numDigits( number )
% numDigits figures out the number of digits in the given `number`
% the number *should* be an integer (whole number, positive/negative)

  digits = max(1, ceil(log10(abs( number ))));

end



