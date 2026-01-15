% Class 1 Exercises
function [Ex_3a, Ex_4b, Ex_5a, Ex_5b, Fix_1, Fix_2] = class_01()
% Replace the 0s (zeros) below with expressions to
% calculate the value of the indicated exercise from
% the textbook, section 1.10.
%
% When this file is filled in, you should be able
% to run class_01_tests.m and not have any test failures.


Ex_3a =  ...
% Type in the solution to Exercise 1.10.3(a) below (replace the 0):
0

Ex_4b = ...
% Type in the solution to Exercise 1.10.4(b) below (replace the 0):
0

Ex_5a = ...
% Type in the solution to Exercise 1.10.5(a) below (replace the 0):
0

Ex_5b = ...
% Type in the solution to Exercise 1.10.5(b) below (replace the 0):
0


Fix_1 = ...
% Fix the expression below so that it computes the correct result for
% the frustum of a cone in Exercise 1.10.17:
 pi*2/3*(1.25/2^2+1.25/2*2.25/2+2.25/2^2) + ...
 2*pi*2.25/2^3


Fix_2 = ...
% Fix the expression below so that it computes the correst result for
% the logistic growth formula:
1e6 / 1 + (1e6 - 1E2 / 1E2) * exp(-0.2*30)


Puzzle = ...
% Fix the expression below so that it computes the number of 
% digits in the whole number portion of 294 (or any other number
% you choose to substitute for 294). Make sure your formula
% works for positive, negative, and zero values, and numbers with
% and without decimal portions.
log10( 294 )


end
