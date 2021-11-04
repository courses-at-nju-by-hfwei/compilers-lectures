%{
    #include "stdio.h"

    // input: abc
    // output: Mysterious a, Mysterious b, c
%}

c       "c"
abcd    "abcd"

%%

{c}       { printf("c\n"); }
{abcd}    { printf("abcd\n"); }
.         { printf("Mysterious character %s\n", yytext); }

%%