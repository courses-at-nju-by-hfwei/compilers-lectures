grammar S;

@header {
package parser.allstar.allstar;
}

// S : a+bc | a+bd
s : a 'c' EOF | a 'd' EOF ;
// A : a+b
a : 'a' a | 'b' ;

WS : [ \t\r\n] -> skip ;