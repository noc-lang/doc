A quote is a kind of anonymous stack containing unevaluated instructions, it's pretty useful because it's lazy. The quote allows to delay execution in order to evaluate later. The quotes are based on the [homoiconicity](https://en.wikipedia.org/wiki/Homoiconicity), it means that it can represent a program (the set of instructions in the quote) like a data (the quote).

To evaluate the quote, we use the `unquote` function available in the Prelude.

Example:

> In the latest version, the 'unquote' function is considered like an opcode, so we don't have to import the 'seq' module.

```scala
noc> load seq
noc> def square = {dup *}
noc> [2 square]
=> [2 square]
noc> unquote
=> [4]
```

# List

We can construct list with quotes.

Example:

```scala
noc> [1 2 3]
=> [[1 2 3]]
```

We can efficiently pattern match a string in converting her to a quote of chars. Indeed, with the [tostr](primitives.html#tostr) and [chars](primitives.html#chars) combinators, we can manipulate easily the strings.

> There is a Noc module dedicated to lists in the Noc STD.

##### Source: [std/list.noc](https://github.com/noc-lang/noc/blob/main/std/list.noc)

```scala
[1 2 3] len => [3]
```

### Dict

With nested quotes, we can also construct dictionaries.

Example:

```scala
noc> [["A" 1] ["B" 2] ["C" 3]]
=> [[["A" 1] ["B" 2] ["C" 3]]]
```

> There is a Noc module dedicated to dicts in the Noc STD.

##### Source: [std/dict.noc](https://github.com/noc-lang/noc/blob/main/std/dict.noc)

```scala
[["A" 1] ["B" 2] ["C" 3]] keys => [["A" "B" "C"]]
```
