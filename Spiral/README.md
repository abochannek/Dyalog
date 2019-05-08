Spiral
======

`Spiral` is a dfn that implements a simple recursive answer to the coding interview question: "Given a two-dimensional array, print it out in spiral order."

An example input:

```
ABCDE
FGHIJ
KLMNO
PQRST
UVWXY
```

and the associated output:

```
ABCDEJOTYXWVUPKFGHINSRQLM
```

The code simply takes, outputs, and drops one vector along the first dimension of the array; it then rotates it by 90° counter-clockwise. `Spiral` terminates when the number of major cells in its argument is zero.

Example usage:

```
      Array←5 5⍴(¯1+⎕UCS'A')+⍳25
      Array
ABCDE
FGHIJ
KLMNO
PQRST
UVWXY
      Spiral Array
ABCDEJOTYXWVUPKFGHINSRQLM
```
