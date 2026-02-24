% wordle game in MATLAB
clear; close; clc;

rawWords = strsplit(fileread('words.txt'), "\n")';
words = char([]);
for idx = 1:length(rawWords)
  if length(rawWords{idx}) == 5
    words = [words ; rawWords{idx}];
   end
end

%% TODO: select a random word from words
word = words(1,:)

for guessNum = 1:6
  guess = [];
  while length(guess) != 5 || ~isequal(class(guess), 'char')
    guess = (inputdlg("Enter a guess (5 letters): ")){1};
  end
  guess = lower(guess);

  result = wordle_check(word, guess);
  wordle_draw_row(guess, result, 1.2 - (.2 * guessNum))

  if all(result == 1)
    break  % leaves the `for` loop early
  end
end

if isequal(guess, word)
  msg = sprintf("%d / 6", guessNum);
else
  msg = sprintf("The word was: %s", word);
end

text(.5, 1.2, msg, ...
           'HorizontalAlignment', 'Center', 'VerticalAlignment', 'Middle', ...
           'FontSize', 24, 'FontWeight', 'bold', 'Color', 'black');

