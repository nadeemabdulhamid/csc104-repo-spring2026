function temps = readHeatMap()

  nr = 10; nc = 12;             % Grid size
  [x, y] = meshgrid(1:nc, 1:nr);

  % Linear gradient: warmer toward bottom-right
  trend = 0.8*x + 1.5*y;  % tweak weights to rotate/tilt the gradient

  temps = 20 + trend;   % baseline 20°C

  hotspots = zeros(nr, nc);

  centers = [3 9; 7 2];                  % (row, col) centers of hotspots
  sig = 1.2;
  for k = 1:size(centers,1)
      r0 = centers(k,1); c0 = centers(k,2);
      hotspots = hotspots + exp(-((y-r0).^2 + (x-c0).^2)/(2*sig^2));
  end

  temps = temps + 10*hotspots;            % add intensity

end
