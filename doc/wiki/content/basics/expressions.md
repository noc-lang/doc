As said before, the Noc expressions uses the reverse polish notation so
the syntax used is like this:

```
Syntax         Noc language 
f(x)      ->   x f
f(x,y)    ->   x y f
g(f(x))   ->   x f g
g(f(x,y)) ->   x y f g 
```

> The mostly examples of this wiki uses the Noc REPL provided in the Noc v0.1.0.0 but it also works in a Noc file (for the latest version).

Example:

```scala
noc> 5 6 +
=> [11]
```

To understand this, here is the steps:

```scala
noc> 5
=> [5]
noc> 6
=> [5 6]
noc> + (# here '+' operation pop the 2 top-stack elements and operate them)
=> [11]
```

With function composition, we can combine several operators, like:

```scala
noc> 5 6 + 2 * 10 /
=> [2.2000000000]
```

> With the v0.1.0.0 it returns 2.2

Explanations:

```scala
noc> 5
=> [5]
noc> 6
=> [5 6]
noc> +
=> [11]
noc> 2
=> [11 2]
noc> *
=> [22]
noc> 10
=> [22 10]
noc> /
=> [2.2000000000]
```

The equivalent in infix notation is: `(5+6) * 2 / 10`, the reverse polish notation implements operator precedence.

We saw some "primitive operators" (the native operators of the interpreter) but it's obviously possible to combine with the native functions, called "primitive functions". These operators,functions are grouped in one module name Prelude.

We can access to the documentation of the all primitive functions,operators [here](primitives.html).

Example:

```scala
noc> 1 2 3 dup + * /
=> [0.0833333333]
```

> With the v0.1.0.0, in the runtime, Haskell uses the scientific notation. So it returns 8.333333333333333e-2

Explanations:

```scala
noc> 1 2 3
=> [1 2 3]
noc> dup
=> [1 2 3 3]
noc> +
=> [1 2 6]
noc> *
=> [1 12]
noc> /
=> [0.0833333333]
```
