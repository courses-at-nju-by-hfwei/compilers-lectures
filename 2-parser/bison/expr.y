%{
    #include <stdio.h>
%}

%union {
    int i;  /* type for results of expressions */
    /* to add type (e.g., struct) for parse tree */
}

%token <i> NUMBER
%type <i> expr  /* to use type for parse tree */

%left '+' '-'
%left '*' '/'
/* placeholder; for unary minus operator */
%right UMINUS

%%
/* constructing parse tree in actions */

lines : lines expr '\n'      { printf("%d\n", $2); }
      | lines '\n'           { printf("0\n"); }
      | /* epsilon */
      | error '\n'           { yyerror("Wrong expression");
                               yyerrok; }

expr : expr '+' expr        { $$ = $1 + $3; }
     | expr '-' expr        { $$ = $1 - $3; }
     | expr '*' expr        { $$ = $1 * $3; }
     | expr '/' expr        { $$ = $1 / $3; }
     | '(' expr ')'         { $$ = $2; }
     | '-' expr         %prec UMINUS { $$ = - $2; }
     | NUMBER               /* default: { $$ = $1; } */
     ;
%%