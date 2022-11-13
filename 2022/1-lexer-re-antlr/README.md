# 1-lexer-re-antlr

## `SimpleExpr.g4`

### Lexer
- `|`
- `[a-z]` vs. `'a' .. 'z'` (范围运算符)
- `+`, `*`, `?`
- `+?`, `*?`, `??`
- `fragment`: not lexer rules; cannot be used in grammar rules
- literals
- `Alt + Insert`: Generate Lexer Rules for Literals
- grammar rules => implicit lexer rules => explict lexer rules
- matching: longest, priority
- non-greedy subrule: comments, string (including `\"`)
- `lexer grammar`
- `@header`
- error listener

## TODO
- [ ] float number
- [ ] `?`: zero or one

- [在 LaTeX 中书写正则表达式](https://stackoverflow.com/questions/2528797/writing-a-regex-in-latex/2528843)
- 在工具中写，截图

## tools
- try [Regulex](https://jex.im/regulex/)
- try [Debuggex](https://www.debuggex.com/)

## gcc
- [c-lex.c](https://github.com/gcc-mirror/gcc/blob/master/gcc/c-family/c-lex.c)
- [lex.c](https://github.com/gcc-mirror/gcc/blob/master/libcpp/lex.c)

具体是如何实现的?