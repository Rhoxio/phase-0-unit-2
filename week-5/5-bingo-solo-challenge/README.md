[Week 5 Home](../)

# U2.W5: A Nested Array to Model a Bingo Board **SOLO CHALLENGE**

Please refer to the [solo challenge](https://github.com/Devbootcamp/phase-0-handbook/blob/master/solo-challenges.md) guidelines in the [Phase 0 Handbook](https://github.com/Devbootcamp/phase-0-handbook).

## Learning Competencies
- Break down problems into implementable pseudocode
- Create, access, and traverse nested data structures
- Explain how data structures and classes can model a real-world object
- Explain how instance variables and methods represent the characteristics and actions of an object

## Summary

By now, you have had some practice using arrays [ ] and hashes { }. These structures are great at holding collections of data. In this exercise, we will be look at a nested array, or an array that contains arrays in it.

<img src="http://cf.chucklesnetwork.com/items/7/5/7/0/0/original/i-heard-u-like-arrays-so-we-put-an-array-in-your-array.jpg" width="250px" height="250px" />

This sounds complicated, but you will find that it is almost the same as accessing a one-dimensional array. In this challenge, we will be looking at a bingo board and placing our pieces (x's) based on the numbers called.

The first number in the sub-arrays correspond to the letter B, the second I, the third N, the fourth G, and the fifth O. So if the call is N, 34, I would look in the third column for the number 34.

Your goals in this challenge are to:
- Keep all of the logic and variables inside of the class bingo_board. Method calls can be outside.
- Create a method to generate a letter ( b, i, n, g, o) and a number (1-100).
- Check the column for the number.
- If the number is in the column, replace with an 'x'.
- Display a column to the console.
- Display the board to the console (prettily).

Sample bingo board:

```ruby
bingo_board = [[47, 44, 71, 8, 88],
               [22, 69, 75, 65, 73],
               [83, 85, 97, 89, 57],
               [25, 31, 96, 68, 51],
               [75, 70, 54, 80, 83]]
```
sample bingo board after calling G, 65:

```ruby
bingo_board = [[47, 44, 71, 8, 88],
               [22, 69, 75, 'X', 73],
               [83, 85, 97, 89, 57],
               [25, 31, 96, 68, 51],
               [75, 70, 54, 80, 83]]
```

## Releases:

## Release 0: [Pseudocode](https://github.com/Devbootcamp/phase-0-handbook/blob/master/coding-references/pseudocode.md)

Break these challenges down into implementable parts.

## Release 1: [Initial Solution](https://github.com/Devbootcamp/phase-0-handbook/blob/master/coding-references/initial-solution.md)
Translate your pseudocode into code. We started you off with an initialize method, but you will need others to complete the challenge.

## Release 2: [Driver Code](https://github.com/Devbootcamp/phase-0-handbook/blob/master/coding-references/driver-code.md)

Our board is randomly generated each time you run the class, so you need to think creatively about how to test your outputs. Hard coding the board then writing tests to get your initial solution is acceptable. Refactor with the dynamic generator.


## Release 3: [Refactored Solution](https://github.com/Devbootcamp/phase-0-handbook/blob/master/coding-references/refactoring.md)
Refactor your initial solution. Use the driver tests to get feedback about when you break something.

## Release 4: [Reflect](https://github.com/Devbootcamp/phase-0-handbook/blob/master/coding-references/reflection-guidelines.md)

## Release 5: Push your solution
Commit your changes and push your solution to GitHub.

##BONUS Release 6: True Bingo Board

Our bingo board generated with this code
`    @bingo_board = Array.new(5) {Array(5.times.map{rand(1..100)})}
`
creates a 5x5 array with random numbers from 1-100, but that is not how true bingo boards work. Traditionally the pattern is like this: "B" (numbers 1–15), "I" (numbers 16–30), "N" (numbers 31–45), "G" (numbers 46–60), and "O" (numbers 61–75) with a free space in the middle.

Instead of having the code create a random board, have it create a board that would be legal to play Bingo with.

## External Resources

- [Ruby Array Docs](http://www.ruby-doc.org/core-2.1.3/Array.html)
