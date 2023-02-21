Now, Noc is installed so we can run programs. We are going to start with the "Hello,World" program.

### Writing and Running a Noc program
Enter this following code in the hello-world.noc

```scala
def main = {
    "Hello, Noc!" print
}
```
it prints `"Hello, Noc!"`

Save the file and run the noc file like this:
```
$ noc hello-world.noc
"Hello, Noc!"
```

### Anatomy of a Noc program

```scala
def main = {

}
```

We declare a 'main' function, this function is the first function that's executed by Noc. Nothing (except comments but it's ignored in parsing) is in the top-level, we write programs in functions. (see [function-level](https://en.wikipedia.org/wiki/Function-level_programming)).

```scala
"Hello, Noc!" print
```

And the 'print' function allows to print the text ``"Hello, World!"`` in the screen.