# CSC 104 - Class 11

## Plots

(See below for code snippets for each of these.)

- Sample Problem 5.13.1 in Zybooks  (subplots)

- *Matlab for Behavioral Scientists*
    - Code 9.5.2, 9.12.1 (get/set)
    - Code 9.6.1   (labeling)
    - Code 9.8.2   (handles)
    - Code 9.15.1  (histogram)

- Sample problem 10.5.1  (3D)


---

### Sample Problem 5.13.1 

```matlab
THDrpm=500; r=0.12; c=0.25;
THD=THDrpm*2*pi/60;

tf=2*pi/THD;
t=linspace(0,tf,200);

TH=THD*t;
d2s=c^2-r^2*sin(TH).^2;
x=r*cos(TH)+sqrt(d2s); 
xd =-r*THD*sin(TH)-(r^2*THD*sin(2*TH))./(2*sqrt(d2s));
xdd=-r*THD^2*cos(TH)-(4*r^2*THD^2*cos(2*TH).*d2s+(r^2*sin(2*TH)*THD).^2)./(4*d2s.^(3/2));

subplot(3,1,1)
plot(t,x)

grid
xlabel('Time (s)')
ylabel('Position (m)')

subplot(3,1,2)
plot(t,xd)
 
grid
xlabel('Time (s)') 
ylabel('Velocity (m/s)')

subplot(3,1,3)
plot(t,xdd)
 
grid
xlabel('Time (s)')
ylabel('Acceleration (m/s^2)')
```



### Code 9.5.2

`get`/`set`: By knowing the properties of a plotted figure, you can set the properties you want.

```matlab
figure(8)
x = 0:.1:2*pi;
h = plot(cos(x),sin(x), 'r.','markersize',12);
axis equal
get(h)
```

`gca` denotes the properties (or handles) of the current axes.

```
get(gca)
```

### Code 9.6.1

```matlab
figure(10)
x = 0:.1:25;
y = sin(x);

plot(x,y,'g-');
hold on
x_offset = 0;
y_offset = .2;
axis([min(x)-x_offset, max(x)+x_offset, ...
    min(y)-y_offset, max(y+y_offset)]);
plot(x,y,'o','color','r','markersize',6,...
    'markeredgecolor','k','markerfacecolor','r');
xlabel('Time');
ylabel('Happiness');
title('Life has its ups and downs');
```


### Code 9.8.2:

> Every graphics object (figure, line, text, data, etc.) can be assigned a variable called a *handle*. A handle can be used to manipulate the graphic object in a number of ways, as seen below.

```matlab
clear
close all;
figure('Name','Stroop Test')
words = {
    'Red'
    'Green'
    'Blue'
    'Black'
    };
colors = ['rgbk'];
shg
text(.1,.8,sprintf(...
                    ['Report the COLOR of the text\n', ...
                    'as quickly as you can!']), ...
                    'FontSize',18)
axis off
for t = 1:20
    w = randi(4);
    c = randi(4);
    myWordHandle = text(.2,.5,...
        char(words(w)),'Color',colors(c),...
        'Fontsize',48);
    if w == c
        conditionstring = sprintf('Compatible trial');
    else
        conditionstring = sprintf('Incompatible trial');
    end

    myConditionHandle = text(.2,.2,conditionstring);
    pause(2)
    delete([myWordHandle myConditionHandle])
    pause(1)
end
```


### Code 9.15.1:

```matlab
figure(21)
rng('default')
sample = randn(1,2000) + 5;
[N,X] = hist(sample,[2:8])
hist(sample,[2:8])
colormap([.5 .5 .5])
brighten(.75)
```



### Sample problem 10.5.1: 3-D projectile trajectory.


```matlab
v0=250; g=9.81; theta=65;
x0=3000; vx=-30;
v0z=v0*sin(theta*pi/180);
v0y=v0*cos(theta*pi/180);
t=2*v0z/g;
tplot=linspace(0,t,100);
 
% Calculating the x, y, and z coordinates of the projectile at each time.
z=v0z*tplot-0.5*g*tplot.^2;
y=v0y*tplot;
x=x0+vx*tplot;

xnowind(1:length(y))=x0; % Constant x coordinate when no wind.

% Two 3-D line plots.
plot3(x,y,z,'k-',xnowind,y,z,'k--')
grid on
axis([0 6000 0 6000 0 2700])
xlabel('x (m)'); ylabel('y (m)'); zlabel('z (m)')
```

