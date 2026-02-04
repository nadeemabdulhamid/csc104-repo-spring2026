# CSC 104 - Class 7

## Analyzing Matrices - Warm-up

Create a `class_07.m` script file.

Refer to the built-in functions in [Section 3.6](https://learn.zybooks.com/zybook/BERRYCSC104HamidSpring2026/chapter/3/section/6) as necessary.

Define a 3x3 matrix with random numbers between 1 and 9. (Use `randperm` and `reshape`.)

- Compute the sum across rows, columns, and both diagonals.
    > Look up `diam(M)` and `fliplr(M)`.

- Compute the mean across rows; and across the whole matrix.
    > Convert a matrix to vector with `m(:)`.

Define a 3x3 matrix with random numbers between 1 and 100. (Use `randi`.)

- Compute the maximum/minimum across rows, columns, and the entire matrix.

- Set all elements that are less than the mean of the original matrix to 0.

Define an 8x8 magic square.

- Verify that the sum of all rows, columns and the two diagonals are the same.

---



## Historical Temperature Data Analysis

This is an extended exercise that performs some extensive analysis on a real world data set. I downloaded the station file for Rome, GA from the [Global Historical Climatology Network daily](https://www.ncei.noaa.gov/products/land-based-station/global-historical-climatology-network-daily) (as of 12/26/2025). I made some adjustments to clean up the spreadsheet. Save the version below, along with the MATLAB starter file:

- [USW00093801_proc.csv](./class-07/USW00093801_proc.csv) - Rome, GA daily climate records 1948-2025
- [class_07.m](./class-07/class_07_starter.m) - Read the instructions at the top and follow them carefully.

You will need your `tempConvert` and `extractDate` function files (from Class 3).


## Environmental Sensor Grid - `find()`

Reuse:
- [readHeatMap.m](./class-06/readHeatMap.m)

Add the following to your script file and run it:

```matlab
clear; clc;
temps = readHeatMap
imagesc(temps)
```

Explain in comments in your script file what each of the following snippets of code does. Use the `help` documentation to learn about the functions used.

- Basic find
    ```matlab
    idx = find(temps > 35);
    [rows, cols] = ind2sub(size(temps), idx);
    ```

- Directional search
    ```matlab
    k = find(temps > 38, 1, 'first');
    [r, c] = ind2sub(size(temps), k);
    ```

- (Useful for "latest x events")
    ```matlab
    k = find(temps < 20, 3, 'last');
    [r, c] = ind2sub(size(temps), k);
    ```

- Count
    ```matlab
    nHot = numel(find(temps >= 30))
    ```

- (Hint: Nearest ...)
    ```matlab
    [r0, c0] = deal(6, 5);
    idx = find(temps >= 40);
    [R, C] = ind2sub(size(temps), idx);
    [~, iMin] = min(hypot(R - r0, C - c0));
    nrHot = [R(iMin), C(iMin)]
    ```

