# CSC 104 - Class 5

## Thermal Expansion Data

This table tracks the thermal expansion of a steel rod as its temperature increases, which is a common scenario in mechanical engineering and physics.

| Temperature (°C) | 20   | 40   | 60   | 80   | 100  | 120  | 140  |
|------------------|------|------|------|------|------|------|------|
| Expansion (mm)   | 0.00 | 0.24 | 0.48 | 0.72 | 0.96 | 1.20 | 1.44 |


- Define two MATLAB vectors containing these data values, named `temp` and `exps`, by typing out the individual elements.

- Define a vector `temp2` with the same values as `temp` using the colon operators to create the regularly spaced values.

- Define a vector `temp3` with the same values as `temp` using the `linspace` command.

- As a preview of some capabilities we'll explore later, see what the following lines do:

    ```
    figure;
    plot(temp, exps);
    figure;
    bar(temp, exps);
    ```

- Combine both vectors into a 2 (row) x 7 (column) matrix (like the table above) named `dataH`. 

- Show two ways of combining the data into a vertical table - a 7 (row) x 2 (column) matrix with the same data as above. Name them `dataV1` and `dataV2`.


## Creating Arrays Practice

- Create a vector with 100 regularly spaced values starting at 5 and ending at 28.

- Create a vector x having six values between 0 and 10 (including the endpoints 0 and 10). Create an array A whose first row contains the values $3x$ and whose second row contains the values
$5x - 20$.

- Use a single command to create a row vector (assign it to a variable named `R1`) with 11 elements such that
    ```matlab
    R1 =
        35   32   29   26   23   20    9    9    9    9    9
    ```
    Do not type the vector elements explicitly.

- Use a single command to create a row vector (assign it to a variable named `R2`) with 10 elements such that 
    ```matlab
    R2 =
        -4 -1 2 5 8 14 18 22 26 30
    ```
    Do not type the vector elements explicitly.

- Create the following matrix by assigning vectors with constant spacing to the rows (use the `linspace` command for the second row). Do not type individual elements explicitly.

    ```matlab
    A =
    16.0000   12.0000    8.0000    4.0000         0
    20.0000   15.2500   10.5000    5.7500    1.0000
          0    5.0000   10.0000   15.0000   20.0000
    ```

- Create the following matrix by typing one command. Do not type individual elements explicitly.

    ```matlab
    C =
        2     3
        4     3
        6     3
        8     3
       10     3
    ```

- Produce the following vector by **transposing** C.
    ```matlab
    2    4    6    8   10
    3    3    3    3    3
    ```

- Create the following matrix by typing one command. Do not type individual elements explicitly.

    ```matlab
    D =
        1     1     1     1    36
        1     1     1     1    30
        1     1     1     1    24
        1     1     1     1    18
    ```

    What does `[r c] = size(D)` give you?

- Create the following matrix by typing one command. Do not type individual elements explicitly.

    ```matlab
    G =
        1     1     0     0     0
        1     1     0     0     0
        1     1     0     0     0
        0     0     1     1     1
        0     0     1     1     1
        0     0     1     1     1
    ```

    (This is known as _concatenating_ matrices.)

- Create the following matrix N, using the `reshape` command on `0:3:51`:

    ```matlab
    N =
        0     9    18    27    36    45
        3    12    21    30    39    48
        6    15    24    33    42    51
    ```

- Turn `N` back into a single dimensional vector. (use `(:)`.)

- Now create this one (compare to `N` above).

    ```matlab
    N2 =
         0    3    6
         9   12   15
        18   21   24
        27   30   33
        36   39   42
        45   48   51
    ```

- The `logspace` function is especially useful for creating frequency vectors. Define a vector, `dVec` which is 
$[ 10^0\quad 10^{0.01}\quad 10^{0.02}\quad \ldots\quad 10^{0.99}\quad 10^1 ]$ 

    (Logarithmically spaced numbers between 1 and 10: use `logspace`, make sure you get the length right! As in any logarithmic series, each element will be a constant multiple of the one before it.)

- Create a 9x9 matrix, `aMat1`, that contains all 2s using `ones`.

- Create a 9x9 matrix, `aMat2`, that contains all 2s using `zeros`.

- Create a 9x9 matrix of all zeros, but with the values `[1 2 3 4 5 4 3 2 1]` on the main diagonal. (Use `diag`.)

- Define `fMat` to be a 5x3 matrix of random integers with values on the range -3 to 3. First use `rand` and `floor` or `ceil`. Then, only use `randi`.

- Run the `whos` command and review what it displays for the variables you've defined above.


## Create a Puzzle

You come up with a pattern of a matrix that can be defined using a single MATLAB expression. Share your matrix only (not your code), or a description of it if it is large, and see if others can figure out the code to create it.



## More Exercises

Complete for homework; be ready to present.

- Run the `clock` function. What does it provide?

- Type `calendar` to get this month's calendar. How do you look up the calendar for a year ago next month. (Hint: use `help`.)

- What information do you learn from executing the `ver` command? What happens if you do `v = ver()` ?




