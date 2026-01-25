# CSC 104 - Class 4

## Part A - Script vs Function scope

Start a `class_04.m` script file. Add the following to it:

```matlab
%% Scope Lab — Part A: Script vs Function
clear; clc;

% Base workspace variables (script)
a = 10; 
b = 3;

disp('--- In script ---');
disp(a);            % what does this display? why?
disp(b);            % what does this display? why?
whos                % what does this display? why?

% Call functions
y1 = addOne(a);     % pay attention to the `a`s
y2 = addTwo(b);

disp('--- Back in script after calls ---');
disp(y1);           % what does this display? why?
disp(y2);           % what does this display? why?
disp(a);            % what does this display? why?
disp(b);            % what does this display? why?
```

Create these two function files in the same folder:

```matlab
function out = addOne(x)
%ADDONE Adds 1 to the input. 'x' is local to this function.
    a = false;      % what `a` is this?
    out = x + 1;     
end
```

```matlab
function out = addTwo(n)
%ADDTWO Adds 2 to the input. 'n' is local to this function.
    out = n + 2;
    n = 0;
end
```

- **Before running anything:** Predict the output of each `disp` statement. Then, run the `class_04.m` script and write out what actually is displayed and an explanation why, after you have understood it.

- Why do a and b remain unchanged in the script after calling the functions (even though `addOne` assigns `a` and `addTwo` assigns 0 to `n`?

- Temporarily add `whos` and `disp` statements in the functions to examine and track the local function variables and global workspace variables.


## Part B - Variable shadowing

Add the following to your `class_04.m` script file.

```matlab
%% Part B: Shadowing
clear; clc;
x = 5;
disp('Script x before shadowing:'); disp(x);

y = shadowDemo(x);   % function defines a local 'x' too
disp('Returned y from shadowDemo(x):'); disp(y);
disp('Script x after call:'); disp(x);
```

Create `shadowDemo.m`:

```matlab
function y = shadowDemo(x)
%SHADOWDEMO Demonstrates local variable shadowing.
    x = x + 100;   % local x shadows input x (it’s the same name, new value)
    y = x * 2;
end
```

- Explain why the caller’s `x` didn’t change.


## Part C - Globals (use sparingly)

Append to `class_04.m`:

```matlab
%% Part C: Global variables
clear; clc;
global RATE            % Declare global in script
RATE = 0.05;

p1 = priceWithRate(100);    % uses global RATE internally
disp('p1 with global RATE=0.05:'); disp(p1);     % 105

RATE = 0.10;                % change global
p2 = priceWithRate(100);
disp('p2 with global RATE=0.10:'); disp(p2);     % 110

whos                         % shows 'RATE' as global in base workspace
```

Create `priceWithRate.m`:

```matlab
function out = priceWithRate(base)
%PRICEWITHRATE Adds base*(RATE) to base. 'RATE' is global (not recommended).
    global RATE    % Must also declare global inside the function
    out = base * (1 + RATE);
end
```

- Why must global RATE be declared both in the script and in the function? What happens if you don't declare it in one place or the other? (You might need to quit `Octave` completely and reopen it to re-run after changing the `global` declaration, in order to see the true effect.)

- What risks do globals create (hidden dependencies, hard-to-track changes)?
    > (You may use online resources to research answers to this question.)

- Fix the `priceWithRate` function so it takes the `rate` also as a parameter rather than using a `global` variable.


