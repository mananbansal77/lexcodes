%{
#include<stdio.h>
#include<string.h>
%}
%%
("+"|"-"|"*"|"/"|"="|"<"|">"|"=="|"!="|"&&"|"||") {printf("operator =%s\n",yytext);}
[][,;{}()] {printf("separators= %s\n",yytext);}
(if|else|while|for|return|int|float|char|double|void) {printf("keyword =%s\n",yytext);}
[a-zA-Z_][a-zA-Z_0-9]* {printf("identifier =%s\n",yytext);}
[0-9] {printf("integer%d\n",yytext);}
. {printf("unknown token %s\n",yytext);}
[ \t\n]  ; 
%%
int main()
{
    yyin=fopen("file.txt","r");
    if(!yyin)
    {
        printf("error");
        return 1;
    }
    else{
        yylex();
        fclose(yyin);
        return 0;
    }

}
int yywrap()
{
    return 1;
}
