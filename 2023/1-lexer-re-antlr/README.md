# 1-lexer-re-antlr

## `SimpleExpr.g4`

### EOF
- EOF (left)

### Grammar
- `|`
- `[a-z]` vs. `'a' .. 'z'` (范围运算符)
- `+`, `*`
- `?`
  - no examples yet

- play with it
	- WS `-> skip`
	- `fragment`: not lexer rules; cannot be used in grammar rules

### gradle
- Gradle `generateGrammarSource`
	- `build/generated-src/antlr/main/simpleexpr/`
	- `SimpleExprLexer`
		- literal names vs. symbolic names
	- `SimpleExpr.tokens`
	- `Alt + Insert`: Generate Lexer Rules for Literals
		- `if` vs. `ID`
		- grammar rules => implicit lexer rules => explict lexer rules

### non-greedy
#### Comments
- `.`: match any single character, including `\n`
- `.*`: greedy
  - till *the last* `\n`
- `.*?`
	- `+?`, `*?`, `??`

### Matching Principles
- longest
  - `float`
  - 3.1415926
- priority:
  - in this order: single-line comment, doc comment, multi-line comment
- non-greedy

#### Strings

#### Testing
- `@header`
- error listener

#### 
- `lexer grammar`
  - 4.1 (1) 语法导入

## RE
- [在 LaTeX 中书写正则表达式](https://stackoverflow.com/questions/2528797/writing-a-regex-in-latex/2528843)
- 在工具中写，截图

## tools
- try [Regulex](https://jex.im/regulex/)
- try [Debuggex](https://www.debuggex.com/)

## gcc
- [c-lex.c](https://github.com/gcc-mirror/gcc/blob/master/gcc/c-family/c-lex.c)
- [lex.c](https://github.com/gcc-mirror/gcc/blob/master/libcpp/lex.c)

具体是如何实现的?

## TODO
- [ ] `-` 三种用途：减法、取反、负数（如何区分它们；如何区分词法分析部分与语法分析部分）