Noc has [control flow](https://en.wikipedia.org/wiki/Control_flow) thanks to the [pattern matching](https://en.wikipedia.org/wiki/Pattern_matching) with the **case** combinator. With control flow we can have a particular order for the expressions and the pattern matching allows to match to some patterns like `["john"]` or `[_]`:

```scala
"john"
[
    [["john"] ["you are john!"]]
    [[_] ["you are not john!"]]
] case print
```

<br>

```scala
"you are john!"
```

The `[_]` pattern run the default action (otherwise), it matches any pattern.

Example: **(if combinator)**

##### Source: [std/bool.noc](https://github.com/noc-lang/noc/blob/main/std/bool.noc)

```scala
def if = {
  [
    [[True] [swap pop unquote]]
    [[False] [pop unquote]]
  ] case
}
```

<br>

```scala
load std:bool

def main = {
    ["else" print] ["then" print] True if
}
```
