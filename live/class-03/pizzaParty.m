function [ slicePP, leftOver ] = pizzaParty( attendees, pizzas )
% pizzaParty computes the slices per person and the number of
%   slices left over given attendees to the party and number of
%   pizzas ordered.

  slices = 8 * pizzas;
  slicePP = floor( slices / attendees );
  leftOver = rem( slices, attendees );

end
