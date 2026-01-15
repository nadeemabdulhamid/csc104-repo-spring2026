% tests for class_01

[Ex_3a, Ex_4b, Ex_5a, Ex_5b, Fix_1, Fix_2] = class_01();



assert( Ex_3a, 8.1413, 0.0001 );
assert( Ex_4b, 22.9222, 0.0001 );
assert( Ex_5a, 3.7564, 0.0001 );
assert( Ex_5b, 4.3323, 0.0001 );

disp('Part 1 tests passed!');

assert( Fix_1, 13.8876, 0.001 );
assert( Fix_2, 2.8766e+04, 1.0 );

disp('All good!');

