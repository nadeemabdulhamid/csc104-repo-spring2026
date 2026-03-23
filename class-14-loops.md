# CSC 104 - Class 14

## Homework

### `for` Loops

Use `for` loops to complete these exercises. Do not use built-in Matlab functions (like `sum`, `max`, or pairwise operations on arrays).

- [Exercise 6.8.10](https://learn.zybooks.com/zybook/BERRYCSC104HamidSpring2026/chapter/6/section/8?content_resource_id=89885777)

- Complete the following functions:

    ```matlab
    function factors = factorize(val)
        % produces a list of factors of `val` between 2 and (val-1)

        factors = [];

        ... fill in ...
    end

    assert( factorize(val), [2 4 7 8 14 28] );
    ```

    ```matlab
    function val = largestOf(nums)
        % produce the value of the largest number in `nums`
        % assume `nums` is not empty

        ... fill in ...
    end

    assert( largestOf([ 6 8 3 3 17 8 13 ]), 17 );
    ```

    ```matlab
    function idx = indexOfLargest(nums)
        % produce the *index* of the largest number in `nums`
        % assume `nums` is not empty

        ... fill in ...
    end

    assert( indexOfLargest([ 6 8 3 3 17 8 13 ]), 5 );
    ```

    ```matlab
    function idx = indexOf(nums, target)
        % produce the index of the *first* occurrence of target in nums,
        % if at all, or zero (0) if target is not in nums
        %    idx > 0  ==> nums(idx) = target
        % target might not occur in nums and  nums might be an empty array

        ... fill in ...
        ... (hint: could backwards in the for loop) ...
    end

    assert( indexOf([ 6 8 3 3 17 8 13 ], 17), 5 );
    assert( indexOf([ 6 8 3 3 17 8 13 ], 8), 2 );
    assert( indexOf([ 6 8 3 3 17 8 13 ], 25), 0 );
    ```

- **[Challenge: Optional]**

    Complete the semester planning calendar script from class to do the following:
    - display holidays in the output, with a "(No class)" note
    - assign the list of `topics` to dates starting from the beginning of the semester.

    Some hints:
    - You can use `strcat` or `["some text"  "more text"]` to concatenate strings together.
    - You might need to introduce another variable, besides the one used by the `for` loop, to keep track of which topics have been assigned so far.

    <details>
    <summary><strong>Expected output</strong> (click to expand)</summary>

    ```
    Mon, Jan 12: Welcome
    Wed, Jan 14: Basic arithmetic
    Fri, Jan 16: Variables, scripts

    Mon, Jan 19: (No class)
    Wed, Jan 21: Functions
    Fri, Jan 23: Functions

    Mon, Jan 26: Scope, Quiz 1
    Wed, Jan 28: Creating arrays
    Fri, Jan 30: Accessing arrays

    Mon, Feb 02: Array analysis
    Wed, Feb 04: Strings
    Fri, Feb 06: Quiz 2

    Mon, Feb 09: Array Ops
    Wed, Feb 11: Linear algebra
    Fri, Feb 13: Exam 1

    Mon, Feb 16
    Wed, Feb 18
    Fri, Feb 20

    Mon, Feb 23
    Wed, Feb 25
    Fri, Feb 27

    Mon, Mar 02
    Wed, Mar 04
    Fri, Mar 06

    Mon, Mar 09: (No class)
    Wed, Mar 11: (No class)
    Fri, Mar 13: (No class)

    Mon, Mar 16
    Wed, Mar 18
    Fri, Mar 20

    Mon, Mar 23
    Wed, Mar 25
    Fri, Mar 27

    Mon, Mar 30
    Wed, Apr 01
    Fri, Apr 03: (No class)

    Mon, Apr 06
    Wed, Apr 08
    Fri, Apr 10

    Mon, Apr 13
    Wed, Apr 15
    Fri, Apr 17

    Mon, Apr 20
    Wed, Apr 22
    Fri, Apr 24

    Mon, Apr 27
    ```
    </details>
    




