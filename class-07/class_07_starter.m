clear; close; clc;

%{
  INSTRUCTIONS:

  Setup:
    - Copy your function files for `tempConvert` and `extractDate` to this
      directory and *vectorize* them.

    - Make sure you have downloaded the CSV data file, 'USW00093801_proc.csv'
      and saved it in this same directory.

  Part 1:
     Work down through this file, answering any questions, and following
     all the TODO's to replace the `NaN`s everywhere.

     Whenever you complete a TODO, run the file to make sure
     the `assert` check after it passes, then delete (just) the "TODO:" part
     of the comment --- leave the rest of the comment there so that it documents
     what your code is doing.

     When you finish Part 1, instructions for Part 2 are at the very bottom
     of this file.
%}


data = dlmread('USW00093801_proc.csv');    % Read in the entire spreadsheet.
% column 1 : date
% column 2 : element type  (4 = TMAX (Max temp); 5 = TMIN (Min temp))
%            https://www.ncei.noaa.gov/pub/data/ghcn/daily/readme.txt
% column 3 : value of the data (-9999 = missing) for temp: tenths of degrees C
% https://www.ncei.noaa.gov/pub/data/ghcn/daily/readme.txt

% QUESTION: What is the size of data? ___________________________



%%% Step 1: Break down the dates so we can work more easily with them...

% TODO: Access the entire first column of `data` and extract its date components
dts = NaN;
    % check:
    assert( dts(1:3, :), [ 1948 1 1; 1948 1 2; 1948 1 3 ] );

% TODO: find the earliest year (the smallest value in column 1 of `dts`)
fstYear = NaN
    % check:
    assert( fstYear, 1948 );

% TODO: find the latest year (the largest value in column 1 of `dts`)
lstYear = NaN
    % check:
    assert( lstYear, 2025 );



%%% Step 2: Access all the daily maximum temperature readings (column 2),
%%%         convert to tenths of degrees Fahrenheit, and get a sense of the
%%%         spread of the data so we can set the y-axis range on our plot

% TODO: select all rows of `data` where column 2 contains the value `4` (Max temp)
maxs = NaN;
    % check:
    assert( maxs(end-2:end, :), [ 20251217 4 167; 20251218 4 189; 20251219 4 139 ] );

% TODO: convert all values in column 3 of `maxs` to F.
maxsF = NaN;
    % check:
    assert( maxsF(5:9), [469; 570; 540; 610; 630] );

% TODO: replace the entire column 3 of `maxs` with `maxsF`
maxs(:,3) = NaN;
    % check:
    assert( maxs(5:9, 3), [469; 570; 540; 610; 630] );

% TODO: compute the average maximum temperature (column 3 of `maxs`) (in whole degrees F)
avgMax = NaN;
    %check
    assert( avgMax, 73.2, 0.1 );

% TODO: compute the standard deviation of column 3 of `maxs` (in whole degrees F, rounded up)
stdMax = NaN;
    % check:
    assert( stdMax, 17.0, 0.01 );

% Use the avg and std to set the y-axis span of the plot later
plot_y_hi = avgMax + stdMax * 2;
plot_y_lo = avgMax - stdMax * 2;


%%% Step 3: We want to make a separate plot (graph) for each month, Jan...Dec,
%%%         that draws the average maximum temperature (tmax) over that month
%%%         for every year in our range of data. Eventually, the same graph will
%%%         also show the average minimum temperature (tmin) for the month.

allMonths = 1:12;   % vector [1, 2, ... 12]

% TODO: build a sequential list of years between fstYear and lstYear
allYears = NaN;
    % check
    assert( length(allYears), 78 );


% Ignore this next line until part 2 (see end of this file)
% ***** FOR #1 *****

  % To initially get this working, just fix on a single year and month
  % (You can change these to explore, but the assert checks assume that
  %  `yr` is 2020 and `mon` is 1.)
  yr = 2020;
  mon = 1;

  % eventually we'll have 3x4 (i.e. 12) individual plots, each for a separate month...
  subplot(3, 4, mon);

  % this will be a two column matrix of [ yr, avg_tmax ] values that we build up...
  tmax_avgs_mon = [];

  % Ignore this next line until part 2 (see end of this file)
  % ***** FOR #2 *****

    % TODO: Access the entire first column of `maxs` and extract its date components
    tmaxs_dts = NaN;
        % check
        assert( tmaxs_dts(101:103, :), [ ones(3,1)*1948 , ones(3,1)*4 , [10:12]' ] );

    % QUESTION: What is the following line doing? ___________________________
    tmaxs_of_ym = maxs( sum(tmaxs_dts(:, [1:2]) == [yr, mon], 2) == 2, : );

    % TODO: compute the average of column 3 of `tmaxs_of_ym`
    %       (should be in whole degrees F, but rounded to the nearest tenth)
    avg_tmax_of_ym = NaN;
        % check:
        assert( avg_tmax_of_ym, 56.3, 0.1 );

    % QUESTION: What is the following line doing? ___________________________
    tmax_avgs_mon = [ tmax_avgs_mon ; yr, avg_tmax_of_ym ];
        % check:
        assert( tmax_avgs_mon, [2020 56.3] );

  % Ignore this next line until part 2 (see end of this file)
  % END FOR #2


  % now, plot the (year, avg_tmax) point in red...
  plot(tmax_avgs_mon(:,1), tmax_avgs_mon(:,2), "r");
  % set up some axis and title stuff
  axis( [fstYear, lstYear, plot_y_lo, plot_y_hi] );
  set(gca, "fontsize", 9);
  title( datestr([yr mon 0 0 0 0], "mmmm") );

% Ignore this next line until part 2 (see end of this file)
% END FOR #1


%%% End of part 1.
%{

  Part 2.

  - Comment out the lines:
      % yr = 2020;
      % mon = 1;

  - Replace the line: % ***** FOR #1 ***** with the following code:
      for mon = allMonths

    Also, delete all the `assert` check lines from this point down in the file.

  - Replace the line: % ***** FOR #2 ***** with the following code:
      for yr = fstYear:lstYear

  - Replace the lines that say: % END FOR with just the key word:
      end

  When you run the file now, you should get a figure window with 12 plots -
  one for each month.


  Part 3.

  Go through and plot the average minimum monthly temperatures for every year
  as well. You should be able to go through and mirror all the manipulations
  that are done with the tmax data.

  When you've computed the average minimum over the entire data set, and the
  standard deviation, you should change the following:

    plot_y_lo = avgMin - stdMin * 2;

  Change the `plot` command to the following, which plots the average max
  temperatures in red and the average min in blue:

    plot(max_avgs_mon(:,1), max_avgs_mon(:,2), "r", ...
        min_avgs_mon(:,1), min_avgs_mon(:,2), "b");

  After the `title` and right before the last `end`, insert the following
  code and see if you can figure out what it's doing:

    for yr_idx = 10:10:length(tmax_avgs_mon)
      line( tmax_avgs_mon([yr_idx yr_idx]), ...
            [tmax_avgs_mon(yr_idx,2), tmin_avgs_mon(yr_idx,2)] );
    end

  FINALLY, at the *very bottom* of the file, after the last `end` and all
  other code, you can add the following to export the whole figure to a PDF:

    fig = gcf();
    orient(fig,'landscape')
    print "average_max_min.pdf"

%}

