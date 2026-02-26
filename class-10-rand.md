# CSC 104 - Class 10

## Random Numbers

Go over ZyBook section.

## Extended Examples

- ~~Fractal Island Shoreline generator~~

- Monte Carlo pi estimation

    - Generate *n* random (x, y) values (on [-1,+1]) in an *n* x 2 array
    - Compute distances of each point from the origin
    - Create a mask of points that are within radius 1 of the origin
    - Create the negative of that mask
    - Estimate pi: #inside/#total = pi / 4
    - Try different values of n
    - Animate a loop [like wikipedia](https://en.wikipedia.org/wiki/Monte_Carlo_method)
        - retain points instead of regenerating each time around the loop

    <details>
    <summary>Plot stuff</summary>

    ```matlab
    % points = ...
    % inside = ...
    % outside = ...
    % pi_est = ...

    % plot black unit circle
    theta = linspace(0, 2*pi, 100);
    x = cos(theta);
    y = sin(theta);
    plot(x, y, 'k', 'LineWidth', 2); % 'k' sets the color to black
    hold on;

    % format plot
    title('\fontsize{24} Monte Carlo \pi Estimation');
    axis([-1.1 1.1 -1.1 1.1]);      % Sets the limits slightly outside -1 to 1
    axis equal;                     % Ensures the circle isn't distorted into an oval
    grid on;                        % Adds a grid for visibility

    % plot inside and outside points
    plot(points(outside,1), points(outside,2), 'r.', 'MarkerSize', 2); % Outside
    plot(points(inside,1), points(inside,2), 'b.', 'MarkerSize', 2);   % Inside

    % add labels
    text(-1, 1, ['Inside: ', num2str(sum(inside))], 'FontSize', 12, 'Color', 'k', 'FontWeight', 'bold');
    text(-1, 0.9, ['Outside: ', num2str(sum(outside))], 'FontSize', 12, 'Color', 'k', 'FontWeight', 'bold');
    text(-1, -0.8, ['n: ', num2str(n)], 'FontSize', 12, 'Color', 'k', 'FontWeight', 'bold');
    text(-1, -0.9, ['\pi: ~', num2str(pi_est)], 'FontSize', 12, 'Color', 'k', 'FontWeight', 'bold');
    ```

    </details>

    &nbsp;

- **Wordle Game**

    Download the following:

    - [words.txt](./class-10/words.txt) - data file
    - [wordle_game.m](./class-10/wordle_game.m) - the main script (one **TODO** to fill in)
    - [wordle_draw_row.m](./class-10/wordle_draw_row.m) - graphics helper
    - [wordle_check.m](./class-10/wordle_check.m) - **the function that needs to be completed**
    - [wordle_tests.m](./class-10/wordle_tests.m) - some test cases

    &nbsp;

- [Exercise 3.9.36](https://learn.zybooks.com/zybook/BERRYCSC104HamidSpring2026/chapter/3/section/9?content_resource_id=89885564)


## Homework

Complete **at least 3** (your choice) of these options:

- [**Exercise 3.9.6**](https://learn.zybooks.com/zybook/BERRYCSC104HamidSpring2026/chapter/3/section/9?content_resource_id=89885536)

- [**Exercise 3.9.22**](https://learn.zybooks.com/zybook/BERRYCSC104HamidSpring2026/chapter/3/section/9?content_resource_id=89885550)

- [Smoothie Factory](./class-10-smoothie.md)

- [Conway's Game of Life](./class-10-gol.md)


