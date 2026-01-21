# CSC 104 - Class 2

Create a new script file named `class_02.m`. At the top of the file, type:

```matlab
clear;     % clears all workspace variables
clc;       % clears the command window
```

## Variables

In your script file, assign the values `10`, `2.5`, and `-3` to three variables named `a`, `b`, and `c`, respectively. For example:

```matlab
a = 10;
```

Now define variables, `sum_ab`, `diff_bc`, `prod_ac`, and `ratio_ab` with values that are `a+b`, `b-c`, `a*c`, and `a/b`, respectively. For example:

```matlab
sum_ab = a + b;
```

- Run the script file.

- In the Command Window, examine the values of the variables you defined in the script. 

- Type `whos` in the Command Window. What shows up? Do you see the same information somewhere else in the Octave GUI window?

- Reassign (change) the value of `a` to `20`. Examine the value of `sum_ab` and `prod_ac`. Do they change? 

- Add the following to your script and run it:

    ```matlab
    d = a + b + c 
    e = a - b - c;
    ```

    What is the difference between the two? Write the answer in a comment in your script file.

- Examine the value produced by these:

    ```matlab
    class(a)
    class(a > 5)
    class('hello')
    % what do you get?

    v1 = a;
    v2 = a > 5;
    v3 = 'hello world';
    whos
    % how many bytes of memory are used for each of v1, v2, v3?
    ```

## Naming Rules and Syntax

- Copy the following lines to your script. Identify which variable definitions produce errors. Comment out the ones that are invalid and write a brief comment explaining the problem.

    ```matlab
    principal_amount = 5000;
    total-amount = 100;
    r_annual = 0.05;
    2rate = 0.07;
    N12 = 12;
    Total2 = principal_amount * (1 + r_annual/N12);
    Total2 - total-amount = total_diff;
    class = 104;
    total amount = 100;
    for = 33;
    ```

## Coding Pitfalls

- Predict the final value of `volume` below. Then, run the code in your script file and explain in a comment in your script what happens here:

    ```matlab
    temp = 200;
    Temp = 300;
    temp = 100;
    Temp = 400;

    volume = temp / 2
    ```

- Predict the output for each line(s) here. Then run the code and explain in comments what happens at each indicated point.

    ```matlab
    result = newVar + 2      % what happens here?

    4 / 0                    % what happens here?

    0 / 0                    % what happens here?

    Inf + Inf                % what happens here?

    Inf = 42
    Inf + Inf                % what happens here?

    isinf(5 / 0)             % what happens here?
    isinf(Inf)               % what happens here?
    clear Inf
    isinf(Inf)               % what happens here?

    1e308 * 2                % what happens here?
                             % hint: look up `realmax`

    1/(0.1 + 0.2 - 0.3)      % what happens here?

    sqrt(16)                 % what happens here?

    sqrt(-16)                % what happens here?

    sqrt(-1)^2               % what happens here?
    i^2                      % what happens here?
    ```



## Exercises

Complete for homework; be ready to present.

### Exercise 1.10.33

The greatest common divisor is the largest positive integer that divides the numbers without a remainder. For example, the greatest common divisor of 8 and 12 is 4. Use the MATLAB Help Window to find a MATLAB built-in function that determines the greatest common divisor of two numbers. Then use the function to show that the greatest common divisor of:

(a)
91 and 147 is 7.

(b)
555 and 962 is 37.


### Exercise 1.10.38


Use the Documentation pane to look up the `format` function and figure out how to set it to display output as a ratio of integers. For example, the number 3.125 will be displayed as 25/8. Change the display to this format and execute the following operations:

(a) 5/8 + 16/6

(b) <sup>1</sup>/<sub>3</sub> - <sup>11</sup>/<sub>13</sub> + 2.7<sup>2</sup>





### Exercise 1.10.23

A total of **777** people have to be transported using buses that have 46 seats and vans that have 12 seats. Calculate how many buses are needed if all the buses have to be full, and how many seats will remain empty in the vans if enough vans are used to transport all the people that did not fit into the buses.

Define variables for each intermediate stage as you compute an answer.

> (Hint: Use MATLAB built-in functions `fix` and `ceil`.)

Also compute the answer for **1005** people. (Keep the computations for both numbers of people - 777 and 1005 - in your file at the same time, even if it means you have to copy/paste a bunch of stuff.)



### Exercise 1.10.34

(Energy released by earthquakes -- see the zybooks section 1.10.)

