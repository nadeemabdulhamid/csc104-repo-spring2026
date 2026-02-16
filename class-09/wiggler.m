function wiggler(X)
% WIGGLE  Dynamic matrix multiplication.
%   wiggle(X) wiggles the 2-by-n matrix X.
%   Eg: wiggle(house)
%       wiggle(hand)

%   Copyright 2014 Cleve Moler
%   Copyright 2014 The MathWorks, Inc.

set(gcf,'menubar','none','numbertitle','off','name','Wiggle')
if nargin < 1
   X = house;
end

uicontrol('style','text','string','Max Angle', 'units','normalized', 'position', [.15 .01 .1 .04]);
uicontrol('style','text','string','Speed', 'units','normalized', 'position', [.5 .01 .1 .04]);

thetamax = uicontrol('style','slider','max',3.0, ...
    'units','normalized','position',[.25 .01 .25 .04]);
delta = uicontrol('style','slider','max',.05, ...
    'units','normalized','position',[.60 .01 .25 .04]);
t = 0;
stop = uicontrol('string','stop','style','togglebutton');
while ~get(stop,'value')
   theta = (4*abs(t-round(t))-1) * get(thetamax,'value');
   G = [cos(theta) sin(theta); -sin(theta) cos(theta)];
   Y = G*X;
   dot2dot(Y);
   drawnow
   t = t + get(delta,'value');
end
set(stop,'string','close','value',0,'callback','close(gcf)')
