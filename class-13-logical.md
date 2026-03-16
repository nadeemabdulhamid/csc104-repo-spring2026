# CSC 104 - Class 13

## Programming in MatLab (Chapter 6)


How to make MATLAB programs run sections of code:
- ***If*** something is true
- ***While*** something is true
- ***For*** a certain number of times

Run different sections of code depending on:
- The value of a variable
- Which particular condition is true
- What combination of conditions is true
    - If this ***and*** that are true
    - If this ***or*** that is true, etc.
- What relationship two things have
    - For example, one is less than the other; greater than; equal to; not equal to; etc.


## Relational and Logical Operators

| Relational operator | Description |
| --- | --- |
| < | Less than
| >  |	Greater than
| <= |	Less than or equal to
| >= |	Greater than or equal to
| == |	Equal to
| ~= |	Not Equal to

- Can't put space between operators that have two characters
- "Not equal to" is "`~=`", not "!=" as in C, C++, Java, Python, ...
- "Equal to" comparison is two equal signs (`==`), not one.
    - Remember, `=` means "assign to" or "put into"

Result of comparing with a relational operator is always "true" or "false"
- If "true", MATLAB gives the comparison a value of one (`1`)
- If "false", MATLAB gives the comparison a value of zero (`0`)

### Comparing Arrays

#### Array-to-Array
- Must be the same dimensions
- MATLAB does an elementwise comparison
- Result is an array that has same dimensions as other two but only contains 1's and 0's

#### Array-to-Scalar

- MATLAB compares scalar to every member of array
- Result is an array that has same dimensions as original but only contains 1's and 0's

#### Example
```
>> x=8:12
x =       8     9    10    11    12
>> x>10
ans =     0     0     0     1     1
>> x==11
ans =     0     0     0     1     0
>> x>=7
ans =     1     1     1     1     1
```

It helps to picture in your mind that the result of a logical comparison:
1. Is a vector
2. Has a 0 or 1 corresponding to each original element
```
>> x=8:12
x =       8     9    10    11    12
>> x>10
ans =     0     0     0     1     1
```

> **Tip**

If results of relational comparison stored in a vector, can easily find the number of elements that satisfy that comparison, i.e., that are true, by using **`sum`** command, which returns sum of vector elements
- Works because elements that are *true* have value of `1` and *false* elements have value `0`

#### Example

How many of the numbers from 1-20 are prime? 
- Use MATLAB `isprime` command, which returns true (1) is number is prime and false (0) if it isn't

> **Tip**

Can mix relational and arithmetic operations in one expression
- Arithmetic operations follow usual precedence and always have higher precedence than relational operations
- Relational operations all have equal precedence and evaluated left to right

```
>> 3+4<16/2
ans =
     1

>> 3+(4<16)/2
ans =
     3.5000
```

## Logical Vectors/Arrays

A logical vector or logical array is a vector/array that has only logical `1`s and `0`s
- 1's and 0's from mathematical operations don't count
- 1's and 0's from relational comparisons do work
- First time a logical vector/array used in arithmetic, MATLAB changes it to a numerical vector/array

### Logical Indexing

Can use logical vector to get actual values that satisfy relation, not just whether or not relation satisfied. Doing this is called *logical indexing* or *logical subscripting*
- Do this by using logical vector as index in vector of values. Result is values that satisfy relation, i.e., values for which relationship are 1

#### Example

What are the numbers from 1-10 that are multiples of 3?
```
>> numbers = 1:10
numbers   = 1  2  3  4  5  6  7  8  9 10

>> multiples = rem( numbers, 3 ) == 0
multiples = 0  0  1  0  0  1  0  0  1  0

>> multiplesOf3 = numbers(multiples)
multiplesOf3 =
     3  6  9
```

> Think of `numbers(multiples)` as pulling out of `numbers` all elements that have a 1 in the corresponding element of `multiples`.


#### Example

What are the prime numbers from 1-20? 
```
>> numbers = 1:20;
>> numbers( isprime(numbers) )
ans =
     2  3  5  7  11  13  17  19
```

Logical indexing is particularly useful when used with logical operators...

## Logical Operators

Logical operators in MatLab operate on numbers interpreted as truth values.


| Logical operator | Name | Description |
| --- | --- | --- |
| `&`<br>Example: <code>A & B</code> | AND | Operates on two operands (A and B). If both are true, the result is true (1); otherwise the result is false (0). |
| <code>\|</code><br>Example: <code>A \| B</code> | OR | Operates on two operands (A and B). If either one, or both, are true, the result is true (1); otherwise (both are false) the result is false (0). |
| `~`<br>Example: <code>~A</code> | NOT | Operates on one operand (A). Gives the opposite of the operand; true (1) if the operand is false, and false (0) if the operand is true. |

> What is the output of the following MATLAB code?
> ```matlab
> A = [1 0 1];
> B = [0 0 1];
> C = A & B;
> D = A | B;
> disp(C);
> disp(D);
> ```


- Logical operators (like relational operators) can be used with scalars and arrays.
- [Order of precedence](https://learn.zybooks.com/zybook/BERRYCSC104HamidSpring2026/chapter/6/section/1#:~:text=false%20(zero%20elements).-,Order%20of%20precedence,-Arithmetic%2C%20relational%2C%20and)
    - What does this code evaluate to: `4*4 > 16 | 2 == 2`

- Other [built-in logical functions](https://learn.zybooks.com/zybook/BERRYCSC104HamidSpring2026/chapter/6/section/1#:~:text=Built%2Din%20logical%20functions)

### Sample Problem 6.1.1

The following were the daily maximum temperatures (in °F) in Washington, DC, during the month of April 2002: 58 73 73 53 50 48 56 73 73 66 69 63 74 82 84 91 93 89 91 80 59 69 56 64 63 66 64 74 63 69 (data from the U.S. National Oceanic and Atmospheric Administration). Use relational and logical operations to determine the following:

1. The number of days the temperature was above 75°.
2. The number of days the temperature was between 65° and 80°.
3. The days of the month when the temperature was between 50° and 60°.


### Lab Activity 6.9.1

Complete [Section 6.9](https://learn.zybooks.com/zybook/BERRYCSC104HamidSpring2026/chapter/6/section/9).


## Homework

You should **not** use conditionals (`if`/`switch`) or loops for any of these.

- [Exercise 6.8.1](https://learn.zybooks.com/zybook/BERRYCSC104HamidSpring2026/chapter/6/section/8?content_resource_id=89885769)
- [Exercise 6.8.3](https://learn.zybooks.com/zybook/BERRYCSC104HamidSpring2026/chapter/6/section/8?content_resource_id=89885807)
- [Exercise 6.8.4](https://learn.zybooks.com/zybook/BERRYCSC104HamidSpring2026/chapter/6/section/8?content_resource_id=89885771)
- [Exercise 6.8.7](https://learn.zybooks.com/zybook/BERRYCSC104HamidSpring2026/chapter/6/section/8?content_resource_id=89885774)
- [Exercise 6.8.10](https://learn.zybooks.com/zybook/BERRYCSC104HamidSpring2026/chapter/6/section/8?content_resource_id=89885777)

- **Leap Year** A year is a leap year if it is divisible by 4, unless it is a century year that is not divisible by 400. (1800 and 1900 are not leap years while 1600 and 2000 are.) Write a function `isLeapYear` that determines whether a given year is a leap year. For this exercise, you will probably need to use the `rem` (remainder) operation (look it up in the documentation). If one number is evenly divisible by another, the remainder operation will produce a 0 (zero) result. (Remember the boolean operations, and/or/not.)

    Here are some tests:

    ```
    assert(isLeapYear(1900), false)
    assert(isLeapYear(1599), false)
    assert(isLeapYear(1996), true)
    assert(isLeapYear(2000), true)
    assert(isLeapYear(1600), true)
    assert(isLeapYear(2016), true)
    assert(isLeapYear(1792), true)
    assert(isLeapYear(1795), false)
    assert(isLeapYear(3400), false)
    assert(isLeapYear(3200), true)
    ```

- **Valid Date** Write a function, `validDate` that takes a date (numbers `mm`, `dd`, `yyyy`) and determines if the date is valid, taking into account leap years. Provide a comprehensive set of your own tests. Try to write a logical expression that is as concise as possible.