function Fn = fib ( n )
% fib computes the n'th fibonacci number

  phi = (1 + sqrt(5)) / 2;
  Fn = round((phi^n - (-phi)^(-n)) / sqrt(5));

end

