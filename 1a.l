%{
#include<stdio.h>
int l=0,w=0,s=0,c=0;
%}

%%
[.] {l++;}
[ ] {s++;}
[\t] {s=s+3;}
[a-zA-Z]+ {w++,c=c+yyleng;}
\n {return 0;}
.  { }
%%

int main()
{
   printf("enter the input String:\n");
   yylex();
   printf("\nthe number of lines are %d\nthe number of words are %d\nthe number of characters are %d\nthe number of spaces are %d\n",l+1,w,c,s);
   return 0;
}

