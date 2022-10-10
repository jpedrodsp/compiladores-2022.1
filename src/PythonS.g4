grammar PythonS;

prog: decVars* decFunc* blocoMain
    ;

decVars: VALUETYPES (listaIds | listaAtribs) ';'
    ;
    
// type: 'int'
//     | 'real'
//     | 'string'
//     | 'boolean'
//     | 'void'
//     ;
INT_TYPE: 'int';
REAL_TYPE: 'real';
STRING_TYPE: 'string';
BOOLEAN_TYPE: 'boolean';
VOID_TYPE: 'void';
VALUETYPES: INT_TYPE | REAL_TYPE | STRING_TYPE | BOOLEAN_TYPE | VOID_TYPE;

listaIds : ID(',' ID)*
    ;
listaAtribs:  ID '=' (ID|NUMBER_VALUE|STRING|BOOL_VALUE)
    ;
//decFunc: ('def' ID '(' listaParams* ')' type '{' decVars* decFunc* stmt+ '}')+
decFunc: ('def' ID '(' listaParams* ')' VALUETYPES '{' decVars* stmt* '}')+
    ;
blocoMain: 'def' 'main' '(' ')' '{' stmt*  '}'
    ;
stmt: for_statement
    | dowhile_statement ';'
    | if_statement
    | attrib_statement ';'
    | nativeFunc
    | ID ID operacao ID '(' expr ')' ';'
    | ID (NUMBER_VALUE | ID) ';'
    // | ID'(' ID expr ')' ';'
    | function_call ';'
;
//todo: add func_call rule to statement or attribution
function_parameter: (ID | expr);
function_parameter_list: function_parameter (',' function_parameter)*;
function_call: ID '(' function_parameter_list? ')';

break_keyword: 'break';
break_statement: break_keyword ';';

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
listaParams: VALUETYPES ID | VALUETYPES ID ',' listaParams
  ;
nativeFunc: ID operacao 'input' '(' ')' ';'
          | print';'
          ;
print: 'print' '(' printable_expression ')'
       ;
printable_expression: (ID | NUMBER_VALUE | BOOL_VALUE | STRING) (',' (ID | NUMBER_VALUE | BOOL_VALUE | STRING))*;

// todo: test for errors (3x string rule)
// operacao: '!' | '-' | '&&' | '||' | '+' | '-'     | '+' | '*' | '/' | '=='
//         | '!=' | '>=' | '<=' | '>' | '<' | '='
//         | '+=' | '*='
//         ;
// todo: describe operator with precedence, and specify them with rules
NEGATION_OPERATOR: '!';
MINUS_OPERATOR: '-';
AND_OPERATOR: '&&';
OR_OPERATOR: '||';
SUM_OPERATOR: '+';
SUB_OPERATOR: MINUS_OPERATOR;
MULT_OPERATOR: '*';
DIV_OPERATOR: '/';
EQUAL_OPERATOR: '==';
NOT_EQUAL_OPERATOR: '!=';
GREATER_EQUAL_OPERATOR: '>=';
LESS_EQUAL_OPERATOR: '<=';
GREATER_OPERATOR: '>';
LESS_OPERATOR: '<';
ASSIGN_OPERATOR: '=';
PLUS_ASSIGN_OPERATOR: '+=';
MULT_ASSIGN_OPERATOR: '*=';
operacao: NEGATION_OPERATOR | MINUS_OPERATOR | AND_OPERATOR | OR_OPERATOR | SUM_OPERATOR | SUB_OPERATOR | MULT_OPERATOR | DIV_OPERATOR | EQUAL_OPERATOR | NOT_EQUAL_OPERATOR | GREATER_EQUAL_OPERATOR | LESS_EQUAL_OPERATOR | GREATER_OPERATOR | LESS_OPERATOR | ASSIGN_OPERATOR | PLUS_ASSIGN_OPERATOR | MULT_ASSIGN_OPERATOR ;

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