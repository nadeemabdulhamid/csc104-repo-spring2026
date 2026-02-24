function X = gol_setup(N)
  % GOL_SETUP allows the user to interactive set up an NxN game of life board

  X = sparse(N,N);

  % Open a figure and plot the initial state
  fig = figure;
  spy(X, "k");
  grid minor on;
  title('Click to add points; space bar for random (Press Enter to stop)', 'fontsize', 14);
  hold on;
  refresh();
  pos = get(fig, "position");
  set(fig, "position", pos + [0 0 1 1]); % Increase size by 1 pixel
  set(fig, "position", pos);             % Return to original size

  while true
      [c, r, button] = ginput(1);

      if isempty(button)
          break;
      end

      row = round(r);
      col = round(c);

      if button == ' '
        % TODO: Fill in this part ****************************
        % If the spacebar is pressed, fill a random block of the 
        % board with live cells. Focus on a block that is 1/4 the
        % size of N, positioned randomly within the board, and 
        % randomly set cells within that block to alive with a 
        % 25% probability.

      elseif button == 1 && ...
                 row >= 1 && row <= size(X, 1) && col >= 1 && col <= size(X, 2)
          X(row, col) = ~X(row, col); % toggle
      end

       % update the plot
        clf;
        spy(X, "k");
        grid minor on;
        title('Click to add points (Press Enter to stop)', 'fontsize', 14);
        drawnow; % force Octave to refresh the graphics window
  end

  hold off;
  disp('Final matrix updated.');

  close(fig);
 end
