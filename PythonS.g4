grammar PythonS;

prog: decVars* decFunc* blocoMain
    ;

decVars: type (listaIds | listaAtribs) ';'
    ;
    
type: 'int'
    | 'real'
    | 'string'
    | 'boolean'
    | 'void'
    ;

listaIds : ID(',' ID)*
    ;
listaAtribs:  ID '=' (ID|NUMBER_VALUE|STRING|BOOL_VALUE)
    ;
//decFunc: ('def' ID '(' listaParams* ')' type '{' decVars* decFunc* stmt+ '}')+
decFunc: ('def' ID '(' listaParams* ')' type '{' decVars* stmt+ '}')+
    ;
blocoMain: 'def' 'main' '(' ')' '{' stmt+  '}'
    ;
stmt: for_statement
    | dowhile_statement ';'
    | if_statement
    | attrib_statement ';'
    | nativeFunc
    | ID ID operacao ID '(' expr ')' ';'
    | ID (NUMBER_VALUE | ID) ';'
    | ID'(' ID expr ')' ';'
;
//todo: add func_call rule to statement or attribution
break_statement: stmt
    | 'break'';'
;
attrib_statement: ID '=' expr;
for_statement: 'for' ID 'in' 'range' '(' range ')' '{' break_statement '}'
;
dowhile_statement: 'do' '{' break_statement '}' 'while' '(' expr ')'
    ;
if_statement: 'if' '(' expr ')' '{' stmt+ '}' ('else' '{' stmt+ '}')?
;

expr: e1= expr operacao term ';'
    |  term
    ;
term: t1=term operacao factor
    | factor            
    ;
// todo: fix precedence order / operations
factor: '(' expr ')' (';')?
    | (ID | NUMBER_VALUE)
    ;
// todo: treat string variables

range:
INT_VALUE ':' INT_VALUE (':' INT_VALUE)?
;
listaParams: type ID | type ID ',' listaParams
  ;
nativeFunc: ID operacao 'input' '(' ')' ';'
          | print';'
          ;
print: 'print' '(' printable_expression ')'
       ;
printable_expression: (ID | NUMBER_VALUE | BOOL_VALUE | STRING) (',' (ID | NUMBER_VALUE | BOOL_VALUE | STRING))*;

// todo: test for errors (3x string rule)
operacao: '!' | '-' | '&&' | '||' | '+' | '-'     | '+' | '*' | '/' | '=='
        | '!=' | '>=' | '<=' | '>' | '<' | '='
        | '+=' | '*='
        ;
// todo: describe operator with precedence, and specify them with rules

NUMBER_VALUE: INT_VALUE | FLOAT_VALUE;
INT_VALUE: (NUM)+;
FLOAT_VALUE: NUM '.' (NUM)* | (NUM)* '.' (NUM)+;

BOOL_VALUE: BOOL_POSITIVEVALUE | BOOL_NEGATIVEVALUE;
BOOL_POSITIVEVALUE: 'true';
BOOL_NEGATIVEVALUE: 'false';

ID: [a-zA-Z]+[a-zA-Z0-9]*;
NUM: [0-9]+('.'[0-9]+)?;
STRING: '"' .*? '"';
WS: [ \t\r\n]+ -> skip;
COMMENT:
    '//' .*? '\n' -> skip
    ;