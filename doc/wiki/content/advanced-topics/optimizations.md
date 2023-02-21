In the latest version, Noc runs in a virtual machine written in C, this feature was implemented in order to earn performances, reduce time execution.

Here is the Noc codebase:

- [CLI](https://github.com/noc-lang/noc/blob/master/app/Command/CLI.hs) (written in Haskell)
-  [Parser](https://github.com/noc-lang/noc/blob/master/src/Language/Noc/Syntax/AST.hs)/[Lexer](https://github.com/noc-lang/noc/blob/master/src/Language/Noc/Syntax/Lexer.hs) (written in Haskell)
-  Pre-compilation (written in Haskell)
    - [Name Resolution](https://github.com/noc-lang/noc/blob/master/src/Language/Noc/Resolution/Imports.hs)
- Compiler (written in Haskell)
    - [Bytecode](https://github.com/noc-lang/noc/blob/master/src/Language/Noc/Compiler/Bytecode.hs)
    - [Serializer](https://github.com/noc-lang/noc/blob/master/src/Language/Noc/Compiler/Serialize.hs)
- [Virtual Machine](https://github.com/noc-lang/noc/tree/master/src/Language/Noc/VM) (written in C)

------------------------------------------------------------------------

Noc generates a bytecode, an intermediate representation much easier to read for the VM.

Bytecode structure:
`Bytecode {sym = [], constant = [], doc = [], opcodes = []}`

`sym` => The Noc symbols (primitive functions, noc functions, opcodes
(for the quote =\> it used to push opcode like a symbol in a quote))

`constant` => All Noc values

`doc` => All Noc functions docstrings

> The fields above are used to earn time in storing essential datas like (constants, call functions) in indexing her thanks to the operand in opcodes `PUSH_CONST index_const_table` for example. With this tables, we can avoid the use of hashtables that have usually O(n) time complexity against the indexing that have O(1) in complexity.

`opcodes` => The Noc program represented with a set of instructions named opcodes

> The opcodes are linearly represented to avoid trees-recursion and execute each instructions with a basic for loop. A simple loop is much quicker.

Example:

```scala
def main = {
    5 5 + print
}
```

Bytecode output:

```hs
Bytecode {
sym = [FuncSym "main" 0,OpcodeSym ADD_OP,FuncPrim "print" 10], 
constant = [IntConst 5], 
doc = [], 
opcodes = [PUSH_CONST 0,PUSH_CONST 0,ADD_OP,CALL_SYMBOL 2,RETURN]}
```

Then, this bytecode is serialized in a file in order to read this bytecode in the VM (written C) in deserializing her.
