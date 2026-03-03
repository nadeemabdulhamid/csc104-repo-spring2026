# CSC 104 - Class 12

## Recursion

- ### [Fibonacci Numbers](https://en.wikipedia.org/wiki/Fibonacci_sequence)

    ```matlab
    % 1 1 2 3 5 8 13 21
    assert( fib(5), 5 );
    assert( fib(8), 21 );
    ```

- ### [Subset Sum problem](https://www.geeksforgeeks.org/dsa/subset-sum-problem-dp-25/)

    In mass spectrometry, we measure the total mass of a molecule. To identify it,
    we must find which combination of Amino Acids (the building blocks)
    adds up to that total mass.

    You have a peptide with a total mass of **347.16 Da**. You have a "parts bin" of
    common amino acids. Which ones are in your sample?

    | Amino Acid | Symbol | Mass (Da) |
    |---|---|---|
    | Glycine | G | 57.02 |
    | Alanine | A | 71.04 |
    | Lysine | K | 128.09 |
    | Phenylalanine | F | 147.07 |

    ```
    aminoMasses = [57.02, 71.04, 128.09, 147.07];
    aminoSymbols = {'Glycine', 'Alanine', 'Lysine', 'Phenylalanine'};
    observedMass = 346.17;
    ```


    - #### Decision version

        ```
        assert( canSum( [3, 4, 12, 5, 2], 9 ) );
        assert( ~ canSum( [1, 2, 5, 25], 100 ) );
        assert( ~ canSum( [3, 34, 4, 12, 5, 2], 30 ) );
        ```
    
    - #### Fully reconstructed solution

        ```
        [f, idxs] = getSubsetSum([3, 4, 12, 5, 2], 9);
        assert( [f, idxs], [true, logical([1 1 0 0 1])] );

        [f, idxs] = getSubsetSum([1, 2, 5, 25], 100);
        assert( [f, idxs], [false, logical([])] );



        [isMatch, composition] = getSubsetSum( aminoMasses, observedMass )
        aminoSymbols( composition )
        ```

- ### Guessing Game

    ```
    disp("Choose an integer between 1 and 100.\n");
    numberGuess(1, 100)
    ```

    [numberGuess.m](./class-12/numberGuess.m)



## Homework

1. ### Fibonacci vector

    Write a function `fibs` that takes a number `n` and produces a vector (1x`n` array) of the first `n` numbers in the Fibonacci sequence. Use the following example as insight to how you can put the result together from recursive calls:

    ```
    % fibs(6) =     1 1 2 3  5  8
    % fibs(7) =   1 1 2 3 5  8 13
    %  ---->>>
    % fibs(8) = 1 1 2 3 5 8 13 21
    ```

    Note that `fibs(8)` is achieved by 
    - padding out `fibs(6)` with a `0` on the left: `[ 0 1 1 2 3  5  8]`
    - adding that to `fibs(7)`: `[ 0 1 1 2 3  5  8] + [1 1 2 3 5  8 13]`
    - padding that result with a `1` on the left.

    Generalize this idea for any `n`.

    If `n` is 2 or less, produce an `n`-vector of ones.