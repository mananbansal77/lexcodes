Problem Statement-3- Design a LEX Code to identify and print integer and float value in a given input pattern.
%{
#include<stdio.h>
%}
%%
-?[0-9]*\.[0-9]+ {printf("float:%s\n",yytext);}
-?[0-9]+ {printf("integer:%s\n",yytext);}
. 
%%
int main()
{
    printf("enter input");
    yylex();
    return 0;
}
int yywrap()
{
    return 1;
}
