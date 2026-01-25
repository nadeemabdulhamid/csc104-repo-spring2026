function y = shadowDemo(x)
%SHADOWDEMO Demonstrates local variable shadowing.
    x = x + 100;   % local x shadows input x (it’s the same name, new value)
    y = x * 2;
end
