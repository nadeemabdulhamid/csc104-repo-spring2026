# CSC 104 - Class 8

## Character Arrays / "Strings" - Warm-up

- Type the following:

    ```matlab
    x = 456
    y = '456'
    ```

    And then carefully examine the output of `whos`.

- Run the following code. Note that the effect of the `input` function is that there is a prompt in the Command Window waiting for you to type something and press *Enter*.

    ```matlab
    name = input('What is your name? ', 's');
    greeting =...
        sprintf('Hello, %s, I will try to help you.', name);
    greeting
    ```

    From _MATLAB for Behavioral Scientists_:

    > The `'s'` argument to the `input` function informs MATLAB that it should accept a string.

    > `sprintf` - short for *string print format* - lets you assign data to a string variable. The percent sign tells MATLAB that the character following it is not part of the string to be printed, but rather denotes the format in which to print the variable as well as where to insert the variable into the string. The variable itself is indicated afterward.

    See the *14.2.7 Table of Output Conversions* section in the GNU Octave Manual (Documentation window) for other formatting specifications that can be used with `sprintf`.

    > A final word about `sprintf` is that the presence of *printf* within the word `sprintf` can be misleading. When you use the `sprintf` command, you are not actually printing in a physical sense. Rather, you are assigning data in string format (a sequence of literal, alpha-numeric characters) to a variable.

- Try these:

    ```matlab
    piVal = sprintf('The approximate value of %s is %f', 'pi', pi)

    first = 3.00;
    second = 5.25;
    int_vs_float = sprintf(['Here are two numbers, an integer,'...
        ' %d, and a float, %f.'], first, second)
    ```

    `'\n'` is a special character code representing a new line character.

    ```matlab
    s2 = "two\nlines"
    ```

    (Note `size(s2)`.)


## Caesar Cipher

```matlab

clear; clc; close;

function c = encrypt(m, key)
  c = char( mod( (m - 'A') + key, 26 ) + 'A' );
end

message = upper('The quick brown fox jumped over the lazy dog')
message( find(message == ' ') ) = []
message + 0
key = 19;
char(message + key)
cipher = encrypt(message, key)
decipher = encrypt(cipher, -key)

keys = [5, 17, 4, 22];
cipher = char(zeros(1, length(message)))
for k = 1:length(keys)
  cipher(k:length(keys):end) = encrypt(message(k:length(keys):end), keys(k))
end
cipher

decipher = char(zeros(1, length(cipher)))
for k = 1:length(keys)
  decipher(k:length(keys):end) = encrypt(cipher(k:length(keys):end), -keys(k));
end
decipher
```


## Comparing, Searching, Replacement

```matlab
'apples' == 'oranges'
apples_to_oranges = strcmp('apples', 'oranges')
apples_to_apples = strcmp('apples','apples')
apples_to_APPLES = strcmp('apples', 'APPLES')
apples_to_APPLES_ignoring_case =...
        strcmpi('apples','APPLES')


s = ['How much wood could a wood chuck chuck'...
        ' if a wood chuck could chuck wood?'];
all_wood_in_s = strfind(s,'wood')
all_could_in_s = strfind(s,'could')
all_should_in_s = strfind(s,'should')
any_wood_in_s = any(strfind(s,'wood'))
any_should_in_s = any(strfind(s,'should'))


s = ['How much wood could a wood chuck chuck'. . .
' if a wood chuck could chuck wood?'];
s1 = strrep(s,'wood','cider');
s2 = strrep(s1,'chuck','press');
s2


infilename = 'myexpt_EF_062913_step2.mat'
outfilename = strrep(infilename, 'step2', 'step3')
printf('\n');
inMatName = 'MeanReactionTimes.mat'
outTxtName = strrep(inMatName,'.mat','.txt')

```

## Character Arrays

```matlab
c = 'Livestock';
whos c;

c(1)           % 'L' (first character)
c(end)         % 'k' (last character)
c(1:4)         % 'Live' (slice)
c([1 3 5])     % 'Lvs' (select positions)

% Modify in place (chars are mutable)
c(2) = 'I';    % 'LIvestock'
c(5:8) = 'FARM';  % 'LIveFARMk'
length(c)      % number of characters
```

Multiline character arrays get padded:

```matlab
C = ['cattle';   % 2×9 char matrix (space-padded to equal width)
     'chickens '];

C(1, :)        % 'cattle   '
C(:, 2)        % ['a'; 'h'] (second column across rows)
```

Conversions:

```matlab
n = 123.456;
num2str(n, '%.3f')   % character array

codes = double('ABC')     % ASCII codes
char(65)

c = '42.75';
x = str2double(c)

string(n)    % check size -- a scalar
```

## Matching and Counting

```
isstrprop ('abc123', 'alpha')    
sum(isstrprop ("abc123", "alpha"))

str = 'banana'
str == 'a'
sum(str == 'a')
```



## Homework

> Create a file named `homework_07.m` that includes code to test your solutions to each of the following exercises.

1. Create a *function file* named **`input_check.m`** (with a single function named `input_check()` with no arguments). Write code that gets two strings from the user and then tells the user whether the strings are: 1) identical including the case of all letters, 2) the same when letter case differences are ignored, or 3) different even when case differences are ignored.

2. It is common to use the string processing functions to manipulate file names.

    Create a *function file* named **`file_name_check.m`**. Implement a function that gets a file name from the user.  If the entered file name does not contain any extension (it does not include a period), append the string `'.m'` to the end of the file name.  Then use the **`exist()`** function to check if the file exists in MATLAB's search path (check for a return value of 2).  If the file is found, display a message that tells the user that the file exists in the search path.  Otherwise, display a message saying the file does not exist in the search path.  In both cases, include the full file name in the message displayed to the user.

3. A *palindrome* is a word or phrase that is spelled the same forwards or backwards (like "a", "bb", and "ma'am"). 
 
    - Write a function named **`is_palindrome()`** with one string input argument and one logical output argument.  The function should return `true` if the input argument is a palindrome (ignoring case) and `false` otherwise. (Hint: look up the `fliplr()` function using the help system.)
 
    - Add code to `homework_07.m` that gets a string from the user, calls your `is_palindrome()` function and then reports whether or not the user-entered string is a palindrome (ignoring case).

4. Many clever long palindromes include spaces and punctuation marks which are ignored for the purposes of counting the text as a palindrome.  For example, "I prefer pi." and "A man, a plan, a canal - Panama!" are considered palindromes. 

    - Write a function named **`just_letters`** with one input argument and one output argument.  The function should return the input string with all characters, except letters, removed.  For example, when called with the input argument string:

          'a man, a plan, a canal - panama!'

        the function `just_letters` should return the string:

          'amanaplanacanalpanama'

    (Hint: You can write this operation with a single assignment statement using the `isstrprop()` function in combination with the `find()` function.)
 
    - Modify your code in `homework_07.m` for Part 3 above to call `just_letters` before calling `is_palindrome`, so that spaces and punctuation marks are not considered when reporting whether or not the user input string is a palindrome.

