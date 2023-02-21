We can document all the functions that we have declared

Example:

```scala
def foo = {
  ---
  Prints "Foo!"
  ---
  "Foo!" print
}
```

And thanks to the 'help' function we can print the function's docstring..

```scala
def main = {
  [foo] help putstr
}

```

Output:

```
docstring for 'foo' function:
------------
Prints "Foo!"
```

We can also print the prelude functions\'s docstring with help

```scala
def main = {
  [pop] help putstr
}
```

Output:

```
docstring for 'pop' function:
------------
Remove the top-stack element

(example)
  stack: [1 2]
  pop => [1]
```
