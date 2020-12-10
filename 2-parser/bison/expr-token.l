%{
    #include "stdio.h"
%}

digit      [0-9]
integer    {digit}+

%%

"+" |
"-" |
"*" |
"/" |
"(" |
")"   { printf("%s\n", yytext); }
{integer}  { printf("%s\n", yytext); }
\n        { printf("%s", yytext); }
[ \t]                               { }
.                                   { printf("Mystery character %c\n", *yytext); }

%%

int main(int argc, char** argv) {
    if (argc <= 1)
        return 1;

    FILE* f = fopen(argv[1], "r");
    if (!f) {
        perror(argv[1]);
        return 1;
    }

    yyrestart(f);
    yylex();

    return 0;
}