We can declare a function like this:

``def function = { atom1 atom2 ... atomN }``

Example:

```scala
noc> def square = {dup *}
noc> 5 square
=> [25]
noc> zap
noc> def number = {6} # We define a constant
noc> number square
=> [36]
```

It's like the substitution, when we called the declared function, in fact it give this:

```scala
noc> 5 dup *
```

We can also declare a function like this:

```
def (function) = { atom1 atom2 ... atomN }
```

It's useful for have a better syntax to define operators.

##### Source: [std/string.noc](https://github.com/noc-lang/noc/blob/main/std/string.noc#L7)

```scala
def ($) = {
    ---
    Convert a string to a quote of chars
    (example)
    "abc" $ => ['a' 'b' 'c']
    ---
    chars
}
```

When we declare a function, the function is pushed in the env. And we can access to this env with the \'env\' command:

```scala
noc> :env
square: [dup *],
```