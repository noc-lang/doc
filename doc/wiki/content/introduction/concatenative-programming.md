Noc language is based on the concatenative paradigm, this paradigm is based on the [function composition](https://en.wikipedia.org/wiki/Function_composition_(computer_science)) in which we compose several functions to construct a more complex function, for instance:

```
[Applicative language]
y = foo(x)
z = bar(y)
w = baz(z)

[Concatenative language]
foo bar baz
```

Noc is also [stack-based](https://en.wikipedia.org/wiki/Stack-oriented_programming) so the expressions can be easily evaluated thanks to the stack machine, when we write an expression is pushed in an stack instead of processus registers. Consequently, Noc use the [Reverse polish notation](https://en.wikipedia.org/wiki/Reverse_Polish_notation) for evaluate expressions, it's the most used notation when we compose functions.

```
Infix     Postfix (reverse polish notation)
5 + 6     5 6 +
```