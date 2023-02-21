Previously, we used the Noc CLI in the [Hello, World!](hello-world.html) chapter, now we are going to use the comments in a Noc program.

We can create simple comments like this:

```scala
def square = {dup *}

def main = {
  # Output: [25]
  5 square
  print
}
```

or multiline comments:

```scala
/*
Hello World in Noc !
*/

def main = {
  "Hello,World!" print
}
```
