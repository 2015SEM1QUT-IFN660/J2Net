grammar Java;

import 
		comments,	//Eric
		keywords,	//Dori
		literals, //Matt
		separators, //Mana
		operators,	//Monte
		whitespace, //Eric
		identifiers; //Aaron


/*
 * Parser Rules
 */

compileUnit
	:	EOF
	;

/*
 * Lexer Rules
 */

//these are just here temporary until we get our literals working.
//ID : [a-zA-Z]+ ; // match identifiers
//NUM : [0-9]+ ; // match integers
//NEWLINE:'\r'? '\n' -> skip; // return newlines to parser (is end-statement signal)