Welcome to the Noc Programming Language's wiki.

## Noc versions

To get Noc, check the [Installation guide](installation.html).

#### The Noc latest version

<blockquote>
    <p>This version was rewritten partially (check this <a href="optimizations.html">section</a>) in C to embark a VM and it's not longer maintained, there are still some bugs or lack of features:</p>
    <ul>
        <li>callstack not works with recursive functions calls</li>
        <li>cannot format quotes</li>
        <li>cannot operate big ints (Arbitrary precision integers)</li>
    </ul>
</blockquote>

#### The Noc v0.1.0.0

> This version is more operational but slower than the latest version because it's fully interpreted.

In this version, theses functions are defined in these modules:

|         Module          |                                 Functions                                         |
| ----------------------- | --------------------------------------------------------------------------------- |
| [prelude](library/prelude.html) | [putchar](library/prelude.html#[putchar])                                                 | 
| [seq](library/seq.html)         | [pushr](library/seq.html#[pushr]), [popr](library/seq.html#[popr]), [unquote](library/seq.html#[unquote]) | 
| [char](library/char.html)       | [chr](library/char.html#[chr]), [ord](library/char.html#[ord])                                    | 
| [sys](library/sys.html)         | [args](library/sys.html#[args]), [catch](library/sys.html#[catch])                                |

### Some examples

fact.noc
```scala
def fact = {
  dup
   [
     [[0] [pop 1]]
     [[_] [dup 1 - fact *]]
   ] case
}

def main = {
  6 fact print
}
```

greater-or-less.noc
```scala
load std:stack
load std:bool

def readInput = {"Choose a number: " ask}

def mysteryNumber = { 45 }

def greaterOrLess = {
    dup
    [
        [[mysteryNumber] ["You won !" print]]
        [[_] [
            ["Less!" print readInput int greaterOrLess] ["Greater!" print readInput int greaterOrLess] 3 -1 rotNM mysteryNumber < if 
        ]]
    ] case
}

def main = {
    readInput int greaterOrLess
}
```

caesar.noc
```scala
load seq
load std:string
/* in the latest version the functions of the 'char' module are integrated in the Noc Prelude */
load char
load std:stack
load std:io
load sys

def caesar = {
    [
        [[[cipher]] [
                [ord swap dup 3 -1 rotNM + chr swap] step
            ]]
        [[[decipher]] [
                [ord swap dup 3 -1 rotNM swap - chr swap] step
            ]]
        [[_] ["error." putstrln 1 exit]]
    ] case

    popr pop swap quote swap <> tostr
}

def encrypt = {
    [cipher] caesar
}

def decrypt = {
    [decipher] caesar
}

def main = {
    /* [offset] [msg in array of chars] [encrypt/decrypt] */
    3 "Hello"$ encrypt print
    3 "Khoor"$ decrypt print
}
```

## Features
- Stack-based language
- An embbeded REPL **(only v0.1.0.0)**
- Running in VM **(only the latest version)**
- A list of combinators for the stack manipulation
- Typed dynamically
- Homoiconic (quotes)
- Provides a module system
- Includes a STD (Standard Library)
- Pattern matching
