%{
#include <iostream>
#include <stdlib.h>
#include <string>

using namespace std;

#include "calc2.tab.h"  /* We want the tokens defined in calc2.y. */
%}

%option noyywrap

%%

                        /* 'val' in 'yylval.val' is the field declared in
                           calc2.y with the %union directive. */

"int"					{ return INT; }
"print"					{ return PRINT; }

[0-9]+                  { yylval.val = atoi(yytext); return NUM; }
[a-zA-Z0-9]{1,15} 		{ yylval.str_val = strdup(yytext); return VARIABLE; }
"+"                     { return PLUS; }
"-"                     { return MINUS; }
"*"                     { return MUL; }
"/"                     { return DIV; }
"("                     { return LPAREN; }
")"                     { return RPAREN; }
"="						{ return EQUALS; }
";"						{ return SEMICOLON; }


"//".*					{}
"/*"((?:.|\n)*?)"*/"	{}

[ \t\r\n]+              { /* Ignore white characters. */ }
.                       { std::cerr << "Invalid token" << std::endl; exit(1); }



%%
