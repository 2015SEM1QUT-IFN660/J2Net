parser grammar parser_packages;


/************ NAMES  ************/


compilationUnit
    :   packageDeclaration? importDeclaration* typeDeclaration* EOF
    ;

packageDeclaration
    :   (annotation)* PACKAGE Identifiers (DOT Identifiers)* SEMI
    ;

packageModifier
	:	annotation
	;

importDeclaration
	:	singleTypeImportDeclaration 
	|	typeImportOnDemandDeclaration 
	|	singleStaticImportDeclaration
	|	staticImportOnDemandDeclaration
	;

singleTypeImportDeclaration
    :   IMPORT typeName SEMI
    ;

typeImportOnDemandDeclaration
    :   IMPORT typeName DOT MUL SEMI
    ;

singleStaticImportDeclaration
    :   IMPORT STATIC typeName DOT Identifiers SEMI
    ;

staticImportOnDemandDeclaration
    :   IMPORT STATIC typeName DOT MUL SEMI
    ;

typeDeclaration
	:	classDeclaration
	|	interfaceDeclaration
	|	SEMI
	;

