Noc is dynamically typed language like the most concatenative languages (except some languages like Cat), it means that the type errors are reported at the runtime, also it's strongly typed (when types does not match it report at the runtime).

Example:

```scala
noc> 1 '1' +
TypeError "cannot operate with different types."
```

### Primitive types

|    Name     |                     Description                             |                    Example                      |
| ----------- | ----------------------------------------------------------- | ----------------------------------------------- |
| Integer     | An arbitrary precision integers, relative number            | `15`, `-86`                                     |
| Float       | Double-precision floating point numbers (real numbers)      | `1.5`, `-3.9`                                   |
| String      | UTF8 string                                                 | `"Hello,World!"`, <br> `"Hello` <br> `World"`   |             
| Char        | Char type                                                   | `'a'`, `'\n'`                                   |
| Bool        | Boolean type                                                | `True` or `False`                               |
| Symbol      | Symbol type                                                 | `dup`                                           |
| Quote       | Anonymous stack containing instructions                     | `[1 2 3]` `[5 5 +]` `[['a' 1] ['b' 2] ['c' 3]]` |