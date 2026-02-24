clear; close; clc;

initialX = gol_setup(50);
X = initialX;

fig = figure();
stopbtn = uicontrol(fig, 'string','stop', 'style','togglebutton', 'position',[10 10 100 30]);
pausebtn = uicontrol(fig, 'string','pause', 'style','togglebutton', 'position',[120 10 100 30]);

% this annoying resize thing to get the uicontrols to show
spy(X); refresh();
pos = get(fig, "position");
set(fig, "position", pos + [0 0 1 1]); set(fig, "position", pos);

t = 0;    % generation
pops = [];    % table of population growth

while ~get(stopbtn,'value')
  t = t + 1;
  pops = [pops [t ; nnz(X)]];
  spy(X); title(num2str(t)); drawnow;

  pause(.1);
  if (get(pausebtn, 'value'))
    continue
  end

  X = gol_next_gen(X);    % generate the next generation
end

p0 = nnz(X);    % print some stats...
p100 = nnz(X);
fprintf('After %d generations: %5d %5d %8.3f\n',t, p0, p100, p100/p0)

% to see population change:
close(fig);
figure();
subplot(1,3,1); plot(pops(1,:), pops(2,:)); title("Population change");
subplot(1,3,2); spy(initialX); title("Initial population");
subplot(1,3,3); spy(X); title("Final population");

