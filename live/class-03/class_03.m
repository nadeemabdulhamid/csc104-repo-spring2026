% tests for class 3 exercises

% assert( ___expression-to-test___,  ___expected-result___ );
assert( 2+2, 4 );

assert( numDigits(2345), 4 );
assert( numDigits(-5623412), 7 );
assert( numDigits(0), 1 );
assert( numDigits(4), 1 );
assert( numDigits(-9), 1 );



assert(fib(1), 1);
assert(fib(2), 1);
assert(fib(3), 2);
assert(fib(20), 6765);
assert( fib(99), 218922995834555169026, 1e6 );  % only ~15 digit precision



[s1,s2] = pizzaParty(5, 2);
assert(s1, 3);
assert(s2, 1);

[s1,s2] = pizzaParty(4, 2);
assert(s1, 4);
assert(s2, 0);

[s1,s2] = pizzaParty(12, 2);
assert(s1, 1);
assert(s2, 4);



assert(tempConvert(25), 77, .0001);
assert(tempConvert(77,'F2C'), 25, .0001);
assert(tempConvert(21.37,'c2f', 2), 70.47, .001);
assert(tempConvert(74,'F2C',1), 23.3, .01);
assert(tempConvert(75.5148,'F2C', 4), 24.1749, .00001);

