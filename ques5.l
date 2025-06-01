Problem Statement-5- Design a LEX Code to count and print the total number of characters, words, white spaces and lines in a given file named as ‘File.txt’.
%{
    #include<stdio.h>
    int a=0,b=0,c=0,d=0,e=0;
%}
%%
\n {a++;b++;c++;}
[\t] {d++;b++;c++;}
[a-zA-Z0-9]+ {e++;b+=yyleng;}
. {b++;}
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
            printf("Total Characters: %d\n", b);
    printf("Total Words: %d\n", e);
    printf("Total White Spaces: %d\n", d);
    printf("Total Lines: %d\n", a);
return 0;

    }
}
int yywrap()
{
    return 1;
}

