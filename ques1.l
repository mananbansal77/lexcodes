Problem Statement-1- Design a LEX Code to count the number of lines, space, tab-meta character and rest of characters in a given input pattern.
%{
#include<stdio.h>
int a=0,b=0,c=0,d=0;
%}
%%
\n {a++;}
" " {b++;}
\t {c++;}
. {d++;}
%%
int yywrap(){
return 1;
}
int main()
{
printf("enter input:");
yylex();
printf("\nlines:%d",a);
printf("\nspaces:%d",b);
printf("\ntabs:%d",c);
printf("\ncharacters:%d",d);
return 0;
}