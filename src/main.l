%{
#include <stdio.h>
%}

%%

. ;

[[:space:]] ;

[A-Za-z0-9\_\-\.]+[^\_\-\.\ ][@][A-Za-z0-9\_\.\-]*[A-Za-z0-9][\-][\ ] ;


[A-Za-z0-9\_\-\.]+[^\_\-\.\ ][@][A-Za-z0-9\_\.\-]*[A-Za-z0-9] {

	printf ("%s\n", yytext);
	
	}
%%

int main(){
 yylex();
 return 0;	

}
