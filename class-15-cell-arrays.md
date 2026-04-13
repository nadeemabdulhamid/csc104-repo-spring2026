# CSC 104 - Class 15

### Morse Code

- [**Reading**](https://www.mathworks.com/content/dam/mathworks/mathworks-dot-com/moler/exm/chapters/morse.pdf)
- [**Code**](./class-15/)
- Class: complete these functions
    ```
    function ltr = decodeLetter( T, code )
    % Produces the single letter corresponding to the given Morse code
    % sequence of "." and "-" characters.
    %  - T should be a cell array representing the current portion of
    %    the tree being searched
    %  - code should be a string made up of only "." and "-" characters

        ltr = "";

    end

    T = morse_tree;
    assert( decodeLetter( T, "." ),    "E" );
    assert( decodeLetter( T, "..." ),  "S" );
    assert( decodeLetter( T, "-.-." ), "C" );
    assert( decodeLetter( T, "--.." ), "Z" );
    assert( decodeLetter( T, ".--." ), "P" );


    function msg = decodeLines( codelines )
    % Given an (N x 1) *cell array* of N Morse code strings, produces the
    % decoded English message. Each row of the given cell array should
    % be the Morse code for a single English letter.

        msg = "";

    end

    T = morse_tree;
    assert( decodeLines( { "..." ; "---" ; "..." } ), "SOS" );


    ```

### Question Tree

- [Code in class](class-15/question_tree.m)

```
% A question tree (QT) is either:
%   - a string "..." representing a thing, or
%   - a two-element cell array { QUESTION  YES  NO }, where
%           QUESTION is a string and YES/NO are QTs

kb = { "Does it have a horn?",
    { "Is it magical?" "a unicorn" "a car" },
    { "Is it frozen?" "ice cream" "a computer" } };
```



## Homework

### Exercises (from the reading)
- 19.1
- 19.9
- 19.10

Upload your completed files to the appropriate subdirectory in your shared OneDrive folder when done.


### Question Tree

- Complete these two functions:

```
function things = allKnownThings( qt )
  % produces a column vector of all the things in the given QT

end

function yn = knowsAbout( qt, thing )

end

kb = { "Does it have a horn?",
        { "Is it magical?" "a unicorn" "a car" },
        { "Is it frozen?" "ice cream" "a computer" } };

assert( allKnownThings( kb ), [ "a unicorn" ; "a car" ; "ice cream" ; "a computer" ] );
assert( knowsAbout( kb, "a unicorn" ),  true );
assert( knowsAbout( kb, "fairies" ),  false );
```

