%{
#include<stdio.h>
#include<string.h>
#include<stdlib.h>
void yyerror(char *s);
int yylex();
%}

%start S

%%
S:B C
 ;
B:'a' B 'b'
 |
 ;
C:'b' C 'c'
 |
 ;
%%

int main()
{
   printf("enter the input:\n");
   if(yyparse()==0)
   {
      printf("input accepted!");
   }
   return 0;
}

void yyerror(char *s)
{
   printf("!!!error -->> %s",s);
   exit(0);
}
