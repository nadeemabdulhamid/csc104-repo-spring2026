function ymd = extractDate(dt)
% extractDate separates portions of a date encoded as a single integer YYYYMMDD
%  returns a vector with [year month day]

  day = mod(dt, 100);
  dt = fix(dt ./ 100);
  month = mod(dt, 100);
  dt = fix(dt ./ 100);
  year = dt;

  ymd = [year month day];
end

