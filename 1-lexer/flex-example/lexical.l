%{
    #include "stdio.h"
%}

if         "if"
else       "else"
ws         [ \t\n\r]+
digit      [0-9]
letter     [A-Za-z]
integer    {digit}+
id         ({letter})({letter}|{digit})*

%%

{ws}       { printf("whitespace\n"); }
{if}       { printf("if\n"); }
{else}     { printf("else\n"); }
{id}       { printf("id: %s\n", yytext); }
{integer}  { printf("integer: %s\n", yytext); }
.          { printf("Mysterious character %s\n", yytext); }

%%