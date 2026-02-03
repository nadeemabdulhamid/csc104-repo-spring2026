# CSC 104 - Class 6

## Environmental Sensor Grid

### Background

A research team is studying temperature patterns across an agricultural test field equipped with a 10×12 grid of soil-temperature sensors. Each sensor records the temperature (in °C) at its location once per hour. You are given a matrix called `temps` that contains one hour of readings from all sensors, where rows represent north–south positions and columns represent west–east positions across the field.

Using the `temps` matrix, complete the tasks below to help the research team analyze variations across different regions of the field. Your work will help identify hot spots, shaded areas, irrigation patterns, and boundary effects that could influence crop growth.


### Setup

Create a `class_06.m` script file and download the following function file to the same directory:

- [readHeatMap.m](./class-06/readHeatMap.m)

Add the following to your script file and run it:

```matlab
clear; clc;
temps = readHeatMap
```

Inspect the data and see if you can find any obvious hotspots. For humans, visualization is often more insightful than raw numbers. Add the following code to your file and run it again:

```matlab
imagesc(temps);
colorbar;
title('Sensor Grid');
```

You should get a figure window pop up with a graphical heat map of the data.


### Single Element Addressing (Indexing)

<details><summary>The image map should reflect three hotspots (cells that are brighter in color than all their surrounding). Use single element indexes to extract the values of those three individual cells.</summary>

```
temps( 3, 9 )
temps( 7, 2 )
temps( 10, 12 )
```

</details>


### Foundational Row/Column Indexing

- Extract the entire northern edge of the field (the first row of sensors).

- Extract the sensor readings along the east side of the field (last column).

- Extract the temperatures from the central west–east transect, i.e., row 5.


### Submatrices and Spatial Regions

- Extract the 4×4 block in the northwest corner of the field.

- Extract all sensors from rows 5 through 8 and columns 4 through 7. This region is being shaded by a nearby structure.

- The field has a new irrigation line along rows 5-6. Extract just those two columns.


### Logical Indexing (Thresholds & Masks)

- Sensors reporting > 35°C might indicate heat stress. Use logical indexing to extract all readings above 35°C.

- Sensors recording < 25°C may be located in low-lying, wetter zones. Create a logical mask of these cooler locations. Visualize the mask with `imagesc`.

- Replace any readings between 35°C and 40°C (inclusive) with 35°C to simulate sensor unreliability in a particular temperature region.

    Redraw the image map of `temps` after doing this.


### Boundary and Pattern Indexing

<details><summary>Extract all boundary sensors (first/last row, first/last column) as one long vector in a single expression, without listing each side separately.
</summary>

```
boundaries = [ temps(1,:) temps(end,:) temps(2:end-1,1)' temps(2:end-1,end)' ]
% the 2:end-1  so that the corners are not duplicated
```
</details>

<p>

<details><summary>
Set the values of all boundary cells to `nan`. 

Redraw the image map of `temps` after doing this.
</summary>

```
temps( [1,end], : ) = nan;
temps( : , [1,end]) = nan;
```
</details>

<details><summary>
Create a checkerboard sample of the field by extracting all elements whose row and column indices are both odd.

(e.g., `(1,1)`, `(1,3)`, `(3,1)`, ...)
</summary>

```
sample = temps(1:2:end, 1:2:end)
```

This is like: `temps( [1, 3, 5, 7, ..., end] , [1, 3, 5, 7, ..., end])`.
</details>


### Linear Indexing

MATLAB stores matrices in [column‑major order](https://en.wikipedia.org/wiki/Row-_and_column-major_order).

<details><summary>
Use linear indexing to extract the 1st, 25th, and 80th elements of temps.
    
Then determine their corresponding (row, column) positions. (Look up `ind2sub`.) Verify that the element values are the same as when accessed through linear indexing.

</summary>

```
temps(1)
temps(25)
temps(80)

[r, c] = ind2sub( size(temps), 1 )
[r, c] = ind2sub( size(temps), 25 )
[r, c] = ind2sub( size(temps), 80 )

assert( temps(1), temps(1, 1) );
assert( temps(25), temps(5, 3) );
assert( temps(80), temps(10, 8) );
```

</details>



## More Exercises

Complete for homework; be ready to present.

- Look up the `magic` function. Generate a 10x10 magic square named `M`.

- Generate an image map of the elements that are less than 50.

- There is a 5x4 block of elements in `M` that are all 50 or greater. Select out that submatrix.

- Select out the column of `M` that has a 1.00 at the top of it.

- Create a vector of the elements in the 4th row of `M` *in reverse order*. Do so using indexing only - no special functions and do not type the elements explicitly.

- Create a magic square of size 8x8 named `M8`.

    Write index expressions into `M8` to select the highlighted cells of each of the following images.

    1. **Single Element**
    
        ![single element](./class-06/matrix-single-element.svg)

    2. **Single row** 
    
        ![row](./class-06/matrix-row.svg)

    3. **Multiple rows** 
    
        ![multi rows](./class-06/matrix-multi-rows.svg)

    4. **Multiple columns**
    
        ![multi cols](./class-06/matrix-multi-cols.svg)

    5. **Submatrix**
    
        ![submatrix](./class-06/matrix-submatrix.svg)

    6. **Strided rows** (*"stride"* = the inter-element increment of a regularly-spaced list of integers, as generated by MATLAB’s colon operator.)
    
        ![strided rows](./class-06/matrix-strided-rows.svg)
    
    7. **Strided rows and columns**
    
        ![strided rows & cols](./class-06/matrix-strided-rowncols.svg)

    > Credit: Software Carpentry *Programming with MATLAB* lessons.
