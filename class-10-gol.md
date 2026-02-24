# CSC 104 - Class 10 - Conway's Game of Life

- [Chapter 12 Extract (PDF)](./class-10/gol-extract.pdf) from _Experiments with MATLAB_

Download:

- [game_of_life.m](./class-10/game_of_life.m): the main script
- [gol_setup.m](./class-10/gol_setup.m): interactive set up function (**one TODO** to be filled in to generate random initial cells)
- [gol_next_gen.m](./class-10/gol_next_gen.m): **the function that needs to be completed**
- [gol_test.m](./class-10/gol_test.m): a test case

The are two steps to complete for `gol_next_gen(X)`:
1. for every cell, compute the number of live neighbors (among the 8 neighbors)
2. apply the rules of Game of Life to determine which cells should be "alive".

For the first step, consider a 3x3 game board with positions labeled 'a' through 'i' (each will be a value either `0` or `1`):

```
abc
dEf
ghi
```

Looking at position `a`, its neighbors are `b e d f c i g h` (because we want the edges of the board to wrap around). 

What are the neighbors of `E`?

If you can generate 8 shifted versions of the matrix as follows, you can apply element-by-element addition to sum up the number of live neighbors ():

```
(col ->)    (col <-)    (row down)     (row up)
cab         bca         ghi         dEf
fdE         Efd         abc         ghi
igh         hig         dEf         abc

(shift <-> and up/down)
igh         Efd         hig         fdE
cab         hig         bca         igh
fdE         bca         Efd         cab
```

A matrix `Y` of live neighbors count would be the sum of these 8.

It might help to think about generating a couple of index vectors for shifting columns/rows by an increase/decrease of one, and apply those index vectors to X in the 8 possible ways.

For example, the index vector corresponding to the `(col ->)` shift would be: `[3   1   2]`, applied to all rows. Etc. 

Define

```matlab
M = ['abc'
    'dEf'
    'ghi']
```
and then work out indexing expressions to get the shifts shown above.

