function result = wordle_check(word, guess)
  % WORDLE_CHECK checks a guess against the given word
  %
  %    Returns a vector the same length as word/guess with values:
  %     1 - to indicate the letter in the guess at that position matches the word
  %     2 - to indicate the letter in the guess at that position is somewhere
  %         else (otherwise unmatched) in the word
  %     3 - the letter in the guess at that position is not anywhere in word

  % Hints:
  % - the `ismember` function might be helpful
  % - it might be helpful to clear out letters from `word` when they match
  %   so they don't "double count" when there are repeats in the guess that
  %   are not in a matching position.

  %% TODO: fill this in -- replace this silly line
  result = (word == guess) + 3 - (3 * (word == guess));
end

