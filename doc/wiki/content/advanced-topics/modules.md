Noc works with a basic module system, thanks to this module system we can load [STD](https://github.com/noc-lang/noc/tree/master/std) modules, [Internal](primitives.html) modules or our own modules.

> We can also load modules in the Noc REPL

To load any module we use this instruction:

```scala
load module
```

or

```scala
load "module"
```

To import a STD module we type firstly "std:" and the STD module name among these [STD modules](https://github.com/noc-lang/noc/tree/master/std).

Example:

```scala
load std:stack

def main = {
    1 2 swap print
}
```

We can load internal modules, they are listed [here](primitives.html).

Example:

```scala
load seq

def main = {
    [1 2 3] [1 +] step print
}
```

```
[2 3 4]
```
