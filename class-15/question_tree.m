% Nadeem Abdul Hamid, CSC 104, Spring 2026

% A question tree (QT) is either:
%   - a string "..." representing a thing, or
%   - a two-element cell array { QUESTION  YES  NO }, where
%           QUESTION is a string and YES/NO are QTs


clear; clc;

if exist("qt.txt", "file")
  load("qt.txt");
  kb = qt;
else
  kb = { "Does it have a horn?",
        { "Is it magical?" "a unicorn" "a car" },
        { "Is it frozen?" "ice cream" "a computer" } };
end

function newQt = askQuestion( qt )
    printf("%s\n", qt{1});
    ans = input("('yes' or 'no') " , "s" );
    if strcmp(ans, "yes")
      newQt = { qt{1} askAndLearn( qt{2} )  qt{3} };
    else
      newQt = { qt{1} qt{2} askAndLearn( qt{3} ) };
    end
end


function newQt = makeGuess( qt )
  printf("Is it %s? ", qt);
  ans = input("('yes' or 'no') " , "s" );
  if strcmp(ans, "yes")
    printf("Yay! I guessed it!\n");
    newQt = qt;   % no change
  else
    printf("Darn! I give up. ");
    thing = input("What were you thinking of? ", "s");
    printf("What question would distinguish %s from %s? (The 'yes' answer should be %s.) ", qt, thing, qt);
    ques = input("", "s");
    newQt = { ques qt thing };
  end
end


function newQt = askAndLearn( qt )
  if strcmp(class(qt), "cell")    % the qt is a cell array
    newQt = askQuestion( qt );
  else    % it's a string
    newQt = makeGuess( qt );
  end
end


function playGame(qt)
  play = input("Play a game? ('yes' or 'no') ", "s");
  while strcmp(play, "yes")

    printf("I'll try to guess what you are thinking of!\n");
    qt = askAndLearn( qt );
    play = input("Play again? ('yes' or 'no') ", "s");

  end

  save "qt.txt" qt

end


function lines = exportQT( qt )
  if strcmp(class(qt), "cell")    % the qt is a cell array
    lines = vertcat( {"Q" ; qt{1}}, exportQT(qt{2}), exportQT(qt{3}) );
  else    % it's a string
    lines = { qt };
  end
end

playGame( kb );


