FizzBuzz
========

`FizzBuzz` is a dfn that implements the answer to the common _Fizz Buzz_ coding interview question.

The Wikipedia page on [Fizz Buzz](https://en.wikipedia.org/wiki/Fizz_buzz) explains how the game works in the physical world:

> Players generally sit in a circle. The player designated to go first says the number "1", and each player thenceforth counts one number in turn. However, any number divisible by three is replaced by the word fizz and any divisible by five by the word buzz. Numbers divisible by both become fizz buzz.

Usage:

```
     {∊(3↑(0=3 5|⍵)∪1)/'Fizz' 'Buzz'⍵}¨⍳30
1  2  Fizz  4  Buzz  Fizz  7  8  Fizz  Buzz  11  Fizz  13  14  FizzBuzz  16  17  Fizz  19  Buzz  Fizz  22  23  Fizz  Buzz  26  Fizz  28  29  FizzBuzz 
```

Breaking it down into its pieces (APL evaluates from right to left):

- `⍳30` creates a vector of the numbers 1 through 30.
- `{⍵}¨⍳30` is passing the numbers one at a time to the function. `⍵` is the variable that gets assigned each number.
- `(3 5|⍵)` is the remainder of `⍵` divided by `3` and `5`, producing a two element vector.
- `(0=3 5|⍵)` creates a boolean vector of two elements per `⍵`, with a `0` if there is a remainder and a `1` if there isn't.
- `(0=3 5|⍵)∪1` checks if there is already a `1` and if there isn't, adds a `1` to the end of the vector. `∪` is the union function and this operation will create `0 0 1` for numbers that are neither divisible by `3` nor `5`.
- `(3↑(0=3 5|⍵)∪1)` takes a three-element vector, which for any number divisible by `3` and/or `5` results in an added `0` at the of the vector.
- `(3↑(0=3 5|⍵)∪1)/'Fizz' 'Buzz'⍵` replicates `Fizz`, `Buzz` or the original number (in that order) according to the pattern in the boolean vectors. For example `1 0 0` is `Fizz`, `0 1 0` is `Buzz`, `0 0 1` (see previous point) is the original `⍵` number.
- Finally, the `∊` flattens (enlists) the resulting character vectors so that the result for `15` is `FizzBuzz`, an eight-character vector, instead of `Fizz Buzz`, two four-character vectors.

Note: The `∊` usage here assumes IBM APL2 semantics, which in Dyalog APL means at least migration level 1 (`⎕ML←1`). This has been default since Dyalog APL 14.0.
