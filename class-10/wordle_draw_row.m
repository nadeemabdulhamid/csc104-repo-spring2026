function wordle_draw_row(guess, colors, startY)
    % wordle_draw_row(guess, colors, startY)
    % Draws a single Wordle row in the current figure window.
    % guess: A 5-character string or char array (e.g., 'crane')
    % colors: A 1x5 vector of color codes (1=green, 2=yellow, 3=gray)
    % startY: The starting Y-coordinate for the row (e.g., 0.8 for the top row)

    if nargin < 3
        startY = 0.5; % Default Y position if not specified
    end

    % Ensure input formats are correct
    guess = upper(char(guess));
    if length(guess) ~= 5 || length(colors) ~= 5
        error('Guess must be a 5-letter word and colors must be a 1x5 vector.');
    end

    % Define colors
    green = [0.36 0.66 0.36];
    yellow = [0.81 0.75 0.25];
    gray = [0.58 0.58 0.58];
    colorMap = {green, yellow, gray};

    % Set up the figure (only needed once if drawing a full grid)
    if isempty(get(gcf, 'Children'))
        figure(1, 'Name', 'Wordle Game', 'Position', [100, 100, 400, 450]);
        axis off; % Turn off axes for a cleaner look
        clf;
        xlim([0 1]);
        ylim([0 1.25]);
        hold on; % Keep all drawn elements
    end

    % Draw the 5 tiles
    tileWidth = 0.15;
    tileHeight = 0.15;
    startX = 0.1;
    spacing = 0.02;

    for i = 1:5
        % Calculate position for the current tile
        xPos = startX + (i-1) * (tileWidth + spacing);
        yPos = startY;

        % Select the color
        currentColor = colorMap{colors(i)};

        % Draw the square using annotation (normalized units)
        rectangle('Position', [xPos, yPos, tileWidth, tileHeight], ...
                   'FaceColor', currentColor, 'EdgeColor', 'black', 'LineWidth', 2);

        % Add the letter text
        text(xPos + tileWidth/2, yPos + tileHeight/2, guess(i), ...
             'HorizontalAlignment', 'Center', 'VerticalAlignment', 'Middle', ...
             'FontSize', 24, 'FontWeight', 'bold', 'Color', 'white');
    end

    hold off;
end

