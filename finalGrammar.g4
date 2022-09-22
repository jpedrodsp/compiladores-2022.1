grammar finalgrammar;

programa: decVar* function* main_function;

// variaveis

decVar: sm_dec_var      // declara variaveis sem inicializa-las
      | att_dec_var  //declara variaveis inicializando-as
      ;

sm_dec_var: TIPO list_id ';'; // int var1,var2,...,varn;

att_dec_var: TIPO list_att ';'; //int var1=1,var2=2 + 2,...,varn=98;

list_id: ID (',' ID)* ;

list_att: att_sem_final (',' att_sem_final)*;

// Atribuiçao
att_sem_final: ID '=' ( STRING | REAL | BOOL ); // tirar expressao declaracao variavel
att: ID '=' (expression | STRING | REAL | BOOL ) ';'; // ex: var = 34+5

//expressoes aritmeticas

expression: expr;

expr: expr '+' term
    | expr '-' term
    | term
    ;

term: term '*' expo
    | term '/' expo
    | expo
    ;

expo: expo '^' factor // remover exponencial
    | factor
    ;

factor: '(' expr ')'
      | INT
      | ID
      | REAL
      | in_call_func
      | '(' '-' INT ')' // expandir para (-a + b)
      ;

// expressoes de comparaçao

teste_comp: expr_comp;

expr_comp: expr_comp '==' term_comp
         | expr_comp '!=' term_comp
         | term_comp
         ;

term_comp: term_comp '>=' expr_bool
         | term_comp '<=' expr_bool
         | term_comp '>' expr_bool
         | term_comp '<' expr_bool
         | expr_bool
         ;

expr_bool: expr_bool '&&' term_bool
         | term_bool
         ;

term_bool: term_bool '||' fact_comp
         | fact_comp
         ;

fact_comp: '(' expr_comp ')'
         | INT
         | REAL
         | STRING
         | BOOL
         | ID //not id, se nao flag
         | '(' '!' BOOL ')'
         ; //negar expressao inteira


// funçoes

function : 'def' ID '(' listParam* ')' (TIPO | 'void') '{' blocks* '}'; // define uma funçao qualquer

main_function : 'def' 'main' '(' listParam* ')' '{' blocks* '}'; // define a funçao principal

listParam: TIPO ID (',' TIPO ID)* ; // lista de parametros da funçao
//rever chamada de funcao dentro de fator, ponto e virgula por localidade
formal_call_func: ID '('list_callf_param')' ';'; // define como se chama uma funçao

in_call_func: ID '('list_callf_param')'; // define como se chama uma funçao sem ponto e virgula

// define os tipos de parametro de uma funçao Ex: func(3+2) ou func(var) etc...
list_callf_param: ID
                | in_call_func
                | expression
                ;

return_stm: 'return' (ID | BOOL | expression) ';'; // define o 'return' da funçao

//print

print_stm: 'print' '(' (STRING | ID | list_sv) ')' ';'; //generalizar para exp

list_sv: list_str_exp | list_str_var ;//reduzir a expressoes
list_str_var: STRING ',' ID (',' STRING ',' ID)*;    // ex: print("var1=",a,"var2=",b)
list_str_exp: STRING ',' expression (',' STRING ',' expression)*; // ex: print("var1=",34+23,"var2=",8)
//input

input_stm: ID '=' 'input()' ';'; // define o input

// if-else

if_stm: 'if' '(' teste_comp  ')' '{' blocks* '}' ('else' '{' blocks* '}')?;

//for

for_stm: 'for' ID 'in' 'range' '(' INT ':' INT (':' INT)? ')' '{' blocks* '}';

//do-while

do_while_stm : 'do' '{' blocks*  '}' 'while' '(' teste_comp ')' ';';

//blocos
blocks: in_call_func // somente quando for void
      | formal_call_func // remover
      | print_stm
      | for_stm
      | do_while_stm
      | att
      | input_stm
      | if_stm
      | return_stm
      | decVar // remover decvar de blocks
      | BREAK //break a parte para loop
      ;


TIPO: 'int' | 'real' | 'bool' | 'string';
fragment DIGIT: [0-9];
BOOL: 'True' | 'False';
BREAK: 'break';
INT: DIGIT+;
REAL: DIGIT+ '.' DIGIT+ ;
COMP: '==' | '!=' | '>=' | '<=' | '>' | '<';
STRING: '"' .*? '"';
ID: [a-zA-Z1-9]+;
WS : [ \t\r\n]+ -> skip ;