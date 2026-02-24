
assert( wordle_check( 'honey', 'happy' ), [ 1 3 3 3 1 ] );
assert( wordle_check( 'crate', 'trace' ), [ 2 1 1 2 1 ] );
assert( wordle_check( 'flame', 'blame' ), [ 3 1 1 1 1 ] );
assert( wordle_check( 'grape', 'graph' ), [ 1 1 1 1 3 ] );
assert( wordle_check( 'stone', 'notes' ), [ 2 2 2 2 2 ] );
assert( wordle_check( 'stone', 'grump' ), [ 3 3 3 3 3 ] );
assert( wordle_check( 'apple', 'apple' ), [ 1 1 1 1 1 ] );

% don't count a single letter in the word as a match and as present-in-another-position
assert( wordle_check( 'honey', 'sunny' ), [ 3 3 1 3 1 ] );

assert( wordle_check( 'mommy', 'modem' ), [ 1 1 3 3 2 ] );


% this one should really be [ 1 2 3 3 1 ], but that's probably
% not doable with just element-by-element array operations/indexing --
% you would need a loop; so this is ok like this:
assert( wordle_check( 'apple', 'allee' ), [ 1 2 2 3 1 ] );

