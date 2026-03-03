
function ans = numberGuess(min, max)
  % user has a number between min and max - computer guesses it
  % Nadeem Abdul Hamid - Mar 3, 2026

  if max < min
    disp("I give up - you must have forgot, changed your number, or cheated, ha!");
    ans = false;
  else
    guess = floor( (min + max) / 2 );

    ui = input(sprintf("Is it %d? [Type 'y' or 'n' and press enter] >> ", guess), "s");
    if strcmp(ui, "y")
      disp("I got it!");
      ans = guess;
      return;
    end

    ui = input(sprintf("Is %d too high? [Type 'y' or 'n' and press enter] >> ", guess), "s");
    if strcmp(ui, "y")
      ans = numberGuess(min, guess-1);
    else
      ans = numberGuess(guess+1, max);
    end
  end

end

