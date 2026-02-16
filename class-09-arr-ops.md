# CSC 104 - Class 9

## Element Operations on Arrays (Vectors/Matrices)

> Examples adapted from [_MATLAB for Behavioral Scientists_](https://www.mathworks.com/academia/books/matlab-for-behavioral-scientists-rosenbaum.html)

Start a file, `class_09.m`. 

- Predict the result of each line below. Add to your script file one by one and run them to check the results. It's probably good to record your observations as a comment below each line in the file once you've added and run them.

    ```matlab
    Z1 = [ 1:6 ; 7:12 ]

    Z2 = Z1 + 2         % adding a scalar to an array

    Z3 = Z1 + Z2        % adding two arrays (matrices)

    Z4 = Z1 - 2

    Z5 = Z1 – Z2

    aa = [ 1:4 ; 5:8 ]

    bb = [ 4:-1:1 ; 8:-1:5 ]

    cc = aa .* bb    

    dd = aa ./ bb

    ee = aa .^ .25

    dd3 = dd * 3

    halfdd = dd/2

    allFives = 5 * ones(2,7)

    % these five lines go together
    x = [1:8];
    y = x.^2
    d1y = diff(y)      % approximate derivative
    d2y = diff(d1y)    % approx. 2nd deriv.
    d3y = diff(d2y)    % aprrox. 3rd deriv.
    ```


## Linear Algebra

> "MATLAB" == "MATrix LABoratory" !

- Explore:

    ```matlab
    u = [1 3 ; -2 0 ; 1 5]
    v = [3 4 1 -2 ; 1 0 -1 2]

    u * v

    w = [0 pi/2 pi ; pi/2 pi 3*pi/2 ; pi 3*pi/2 2*pi]

    sin(w)

    sqrt(w)

    sqrtm(w)

    2.^w

    w^3

    diag(w)

    eye(3)            % identity matrix

    A = [ 1 3 6 ; -2 5 0 ; 1 2 6]
    inv(A)
    A*inv(A)
    ```

- Review **Sample problem 3.8.3**: Solving three linear equations (array division).


## Dot-to-dot

> Adapted from _Experiments with Matlab_.

```matlab
X = [  -6  -6  -7   0   7   6   6  -3  -3   0   0
       -7   2   1   8   1   2  -7  -7  -2  -2  -7 ];
X(:,end+1) = X(:,1) % append a copy of the first column to the end
plot(X(1,:),X(2,:),'.-b','markersize',18,'linewidth',2)
axis(10*[-1 1 -1 1])
grid minor;
axis square;
hold on;
```

- Try multiplying each of these by `X` and plotting:

    ```matlab
    A1 = [ 1/2 0 ; 0 1 ]
    A2 = [ 1 0 ; 0 1/2 ]
    A3 = [ 0 1 ; 1/2 0 ]
    A4 = [ 1/2 0 ; 0 -1 ]
    ```

- Generate some random 2x2 matrices and multiply by `X`.

- Define an angle `theta` and then a _plane rotation_ matrix:
    $$
    G(θ) = \left( \begin{array}{cc}\cos θ & −\sin θ \\
             \sin θ  & \cos θ
             \end{array} \right)
    $$

    Download
    - [dot2dot.m](./class-09/dot2dot.m)
    - [wiggle.m](./class-09/wiggle.m)

    And run `wiggle(X)`.


## Homework

Be prepared to present.

1. Create your own handprint: [**Instructions**](./class-09/ex4-14.pdf)

2. Controlled wiggle: [**Instructions**](./class-09/ex4-15.pdf)

    > Add labels like this:
    > ```
    > uicontrol('style','text','string','Max Angle', 'units','normalized', 'position', [.15 .01 .1 .04]);
    > uicontrol('style','text','string','Speed', 'units','normalized', 'position', [.5 .01 .1 .04]);
    > ```

3. Solve the [**lifeguard problem**](./class-09/lifeguard-problem.pdf).

