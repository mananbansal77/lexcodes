Problem Statement-2- Write a lex code to check if entered input is a valid C identifier or not.
%{
#include<stdio.h>
#include<string.h>
%}
%%
[a-zA-Z_][a-zA-Z_0-9]* {printf("valid c identifier %s\n",yytext);}
. {printf("invalid identifier");}
%%
int yywrap() {
    return 1;
}

int main()
{
printf("enter the input\n");
yylex();
return 0;
}
