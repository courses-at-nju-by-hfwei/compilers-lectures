# 10-llvm

- [-O0 -g0 @ CompilerExplorer](https://youtu.be/m8G_S5LwlTo?t=1374)
- [Running the LLVM Tools](https://youtu.be/Je4tjHmACgI)
  - `clang -S -emit-llvm`
- [The LLVM Intermediate Representation](https://youtu.be/6ur4g3HeMOM)
  - `-Xclang -diable-O0-optnone`
  - `-mem2reg`
- [Program Visualization using LLVM](https://youtu.be/aFbWIJlcWww)
  - `-dot-callgraph`
  - `-dot-cfg`
  - `-dot-regions`
  - `-dot-dom`
  - `-dot-postdom`

## clang
- [Introduction to Clang](https://youtu.be/vQ0vPGMPVn8)
  - clang AST

## TODO
- [ ] type system of LLVM IR
  - https://zhuanlan.zhihu.com/p/163063995
  - [getelementptr](https://llvm.org/docs/GetElementPtr.html)
- [ ] API of LLVM IR
- [ ] SSA: theory, implementation, and applications
- [ ] Clang
- [ ] automatically generate programs for LLVM IRs
- [ ] Chris Lattner 访谈