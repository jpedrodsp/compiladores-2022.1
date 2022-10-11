grammar TopBottomPythonSimplificado;

// Python Simplificado é case-sensitive.
// Linguagem não pode suportar declarações aninhadas de funções.
// Linguagem pode conter chamadas recursivas de funções.
// Funções built-in da linguagem: print, input

// A linguagem Python Simplificado é fortemente tipada.
// Suporte aos tipos: inteiros, reais, strings e booleanos.
// Suporte a operadores:
// Negação: '!';
// Menos unário: '-';
// AND lógico: '&&';
// OR lógico: '||';
// Soma: '+';
// Subtração: '-';
// Multiplicação: '*';
// Divisão (inteiro e real): '/';
// Comparação de igualdade: '==';
// Comparação de desigualdade: '!=';
// Comparação de maior ou igual que: '>=';
// Comparação de menor ou igual que: '<=';
// Comparação de maior que: '>';
// Comparação de menor que: '<';
// Operador de atribuição com soma: '+=';
// Operador de atribuição com subtração: '-=';

// Precedência de operadores:
// Operador de maior precedência será avaliado primeiro.
// Operadores de mesma precedência são avaliados da esquerda para a direita.
// É possível forçar a precedência de operações usando parênteses ().

// Segue a lista de precedência de operadores:
// 1. Negação: '!';
// 2. Menos unário: '-';
// 3. Multiplicação e divisão: '*', '/';
// 4. Soma e subtração: '+', '-';
// 5. Comparação de igualdade e desigualdade: '==', '!=';
// 6. Comparação de maior ou igual que, menor ou igual que, maior que e menor que: '>=', '<=', '>', '<';
// 7. AND lógico: '&&';
// 8. OR lógico: '||';
// 9. Operador de atribuição com soma ou multiplicação: '+=', '*='.

// Identificadores em Python Simplificado:
// Usado para nomear variáveis e funções.
// Tamanho maior que zero.
// Identificadores sempre começam com uma letra.
// Identificadores podem conter letras, dígitos e o caractere '_'.
// No mesmo escopo, identificadores não podem ter o mesmo nome (ou seja, não podem ser repetidos/redeclarados).
// Identificadores não podem ter o mesmo nome que as palavras-chave da linguagem (if, for, while, etc).

// Variáveis e constantes em Python Simplificado:
// Variáveis são posições de memória que guardam dados do programa.
// Toda variável tem seu tipo definido no momento da declaração.
// Para declarar uma variável, atribui-se um tipo a um identificador válido (ex.: int x;).
// Valores padrões para variáveis:
// int: 0;
// real: 0.0;
// string: "";
// boolean: false.
// Permite-se a declaração sequencial de variáveis do mesmo tipo (ex.: int x, y, z;).
// Permite-se a atribuição de valores iniciais para variáveis (ex.: int x = 10;).
// Em caso de múltiplas variáveis, é necessário atribuir um valor para cada uma delas (ex.: int x, y, z = 10, 20, 30;).
// Constantes são variáveis que não deveriam ser alteradas durante a execução do programa.
// Constantes não são tratadas como somente leitura, mas sim como variáveis.
// Uma variável que é definida através de nome de identificador em maiúsculo é considerada uma constante (ex.: int X = 10;).
// Ou seja, Python Simplificado não possui tratamento especial para constantes, mas ainda assim é possível identificá-las.

// Escopo de variáveis em Python Simplificado:
// Globais e locais
// Variáveis globais DEVEM ser declaradas no ínicio do programa.
// Variáveis globais são conhecidas e acessíveis em qualquer parte do programa.
// Variáveis locais são declaradas dentro de funções.
// Variáveis locais DEVEM ser declaradas no ínicio da função.

// Funções em Python Simplificado:
// Funções são blocos de código que podem ser chamados em qualquer parte do programa, após as suas declarações.
// Funções devem ser chamadas após a declaração de variáveis globais e locais.
// Possuem "nome", "lista de parâmetros" e "retorno" e "corpo".
// Uma função que não possui retorno é inferida como sendo do tipo "void".
// Função não possui o mesmo nome que uma outra função ou variável global, independente da sua assinatura.
// Funções podem ser chamadas recursivamente.
// Funções possuem uma lista com zero ou mais parâmetros.
// Todo parâmero de função é passado por valor.
// Sintaxe de declaração de função:
/*
def nome_funcao(tipo_parametro1 nome_parametro1, ..., tipo_parametroN nome_parametroN) tipo_retorno {
    corpo da função;
    return valor_retorno;
}
*/
// Funções do tipo "void" não deve utilizar o comando "return".

// Funções Nativas
// Funções nativas devem ser reconhecidas como um conjunto de procedimentos nativos, para implementação de I/O do usuário.

// Função nativa "print":
// Envia saída para console.
// Cada chamada da função print quebra uma linha.
// A função print aceita múltiplos parâmetros (gerando assim uma lista de parâmetros).
// Cada item da lista de parâmetros é separado por uma vírgula.
// Sintaxe:
/*
print(parametro1, ..., parametroN);
*/
// Exemplos:
/*
print("Hello", "World"); // Imprime "HelloWorld" no console.
print("1 + 1 = ", 1 + 1); // Imprime "1 + 1 = 2" no console.
print(soma); // Imprime o valor da variável "soma" no console.
*/

// Função nativa "input":
// Recebe entrada do usuário.
// Valor recebido depende do tipo de variável que recebe o valor.
// O comando de leitura interrompe a execução do programa até que o usuário digite um valor.
// A confirmação do valor inserido é feita através da tecla "Enter".
// Sintaxe:
/*
variavel = input();
*/
// Exemplos:
/*
int x;
x = input(); // Recebe um valor inteiro do usuário e atribui à variável "x".
real y;
y = input(); // Recebe um valor real do usuário e atribui à variável "y".
string z;
z = input(); // Recebe uma string do usuário e atribui à variável "z".
*/

// Comandos de controle em Python Simplificado:
// if-else, for, do-while
// if-else
// O comando if-else é utilizado para executar um bloco de código caso uma condição seja verdadeira.
// O comando if-else pode possuir um bloco de código adicional para ser executado caso a condição seja falsa.
// Sintaxe #1:
/*
if (condicao) {
    bloco de código caso a condição seja verdadeira;
}
*/
// Sintaxe #2:
/*
if (condicao) {
    bloco de código caso a condição seja verdadeira;
} else {
    bloco de código caso a condição seja falsa;
}
*/

// for
// O comando for é utilizado para executar um bloco de código N vezes.
// O comando recebe um valor inicial, um valor final e um incremento.
// O bloco de código é executado enquanto o valor inicial for menor ou igual ao valor final.
// Em caso do incremento ser negativo, o bloco de código é executado enquanto o valor inicial for maior ou igual ao valor final.
// O bloco de código pode ser interrompido através do comando "break".
// O comando break interrompe a execução do bloco de código e retorna para o final do bloco de código do for.
// O incremento pode ser omitido, e pode assumir os valores 1 ou -1 dependendo dos valores de início e fim.
// Caso o valor de ínicio seja maior que o valor final, o incremento é assumido como -1.
// Caso o valor de ínicio seja menor que o valor final, o incremento é assumido como 1.
// Caso o incremento seja zero, lança-se uma exceção.
// Sintaxe:
/*
for variavel in range(start:stop[:step]) {
    bloco de código;
    [break]
}
*/
// Exemplos:
/*
// Incremento positivo. Automaticamente infere-se o valor do passo como sendo 1.
for i in range(0:10) {
    print(i);
}
// Incremento positivo, com passos de 2.
for i in range(0:10:2) {
    print(i);
}
// Incremento negativo, imprime os números de 10 a 0.
for i in range(10:0:-1) {
    print(i);
}
// Neste caso, devido ao valor inicial ser maior que o valor final, o incremento é definido como -1.
for i in range(10:0) {
    print(i);
}
// Quando o incremento é zero, lança-se uma exceção.
for i in range(0:10:0) {
    print(i);
}
*/

// do-while
// O comando do-while é utilizado para executar um bloco de código enquanto uma condição for verdadeira.
// O bloco de código é executado pelo menos uma vez.
// O bloco de código pode ser interrompido através do comando "break".
// O comando break interrompe a execução do bloco de código e retorna para o final do bloco de código do do-while.
// O bloco de código é executado, e ao seu final, a condição é verificada. Caso a condição seja verdadeira, o bloco de código é executado novamente.
// O do-while é equivalente ao while, porém com a execução do bloco de código pelo menos uma vez.
// Este comando permite loops infinitos.
// Sintaxe:
/*
do {
    bloco de código;
    [break]
} while (condicao);
*/

// Definição do Programa Principal em Python Simplificado:
// O programa principal é composto por zero ou mais declarações de variáveis globais.
// O programa principal é composto por uma ou mais funções globais.
// Deve haver uma função global chamada "main".
// A função "main" é a função principal do programa.
// A função "main" não pode ser tipada.
// A função "main" não pode receber parâmetros.
// O tipo de retorno da função "main" é "void". Logo, não é necessário utilizar o comando "return".
// A função "main" deve ser a última função global do programa.
// O programa principal é um arquivo de texto sem formatação com a extensão ".py".

programa: global_variables_declarations global_functions_declarations main_function_declaration;
global_variables_declarations: (global_variable_declaration)*;
global_functions_declarations: (global_function_declaration)*;

global_variable_declaration: variable_declaration;
global_function_declaration: function_declaration;

variable_declaration: single_variable_declaration | multiple_variables_declaration;
single_variable_declaration: variable_type variable_name (KW_ASSIGN variable_value)? KW_SEMICOLON;
multiple_variables_declaration: variable_type variable_name (KW_COMMA variable_name)* (KW_ASSIGN variable_value (KW_COMMA variable_value)*)? KW_SEMICOLON;
variable_type: KW_INT | KW_FLOAT | KW_STRING | KW_BOOL;
variable_name: ID;
variable_value: INT_VALUE | FLOAT_VALUE | STRING_VALUE | BOOL_VALUE | ID | function_call;

main_function_declaration: KW_DEF main_function_name KW_OPEN_PARENTHESIS KW_CLOSE_PARENTHESIS KW_OPEN_BRACKETS main_function_body KW_CLOSE_BRACKETS;
main_function_name: KW_MAIN;
main_function_body: (statement)*;

function_declaration: KW_DEF function_name KW_OPEN_PARENTHESIS (function_declaration_parameters)? KW_CLOSE_PARENTHESIS (function_return_type)? KW_OPEN_BRACKETS function_body KW_CLOSE_BRACKETS;
function_name: ID;
function_declaration_parameters: function_declaration_parameter (KW_COMMA function_declaration_parameter)*;
function_declaration_parameter: variable_type variable_name;
function_return_type: KW_INT | KW_FLOAT | KW_STRING | KW_BOOL | KW_VOID;
function_body: (variable_declaration)* (statement)*;

statement: assignment_statement | function_call_statement | ifelse_statement | for_statement | dowhile_statement | return_statement;
assignment_statement: variable_name KW_ASSIGN variable_value KW_SEMICOLON;
function_call_statement: function_call KW_SEMICOLON;
function_call: function_name KW_OPEN_PARENTHESIS (function_call_parameters)? KW_CLOSE_PARENTHESIS;
function_call_parameters: function_call_parameter (KW_COMMA function_call_parameter)*;
function_call_parameter: variable_value;

break_statement: KW_BREAK KW_SEMICOLON;

ifelse_statement: KW_IF KW_OPEN_PARENTHESIS ifelse_condition KW_CLOSE_PARENTHESIS KW_OPEN_BRACKETS (ifelse_block_statements)* KW_CLOSE_BRACKETS (KW_ELSE KW_OPEN_BRACKETS (ifelse_block_statements)* KW_CLOSE_BRACKETS)? ;
ifelse_condition: boolean_value;
ifelse_block_statements: statement | break_statement;

for_statement: KW_FOR variable_name KW_IN KW_RANGE KW_OPEN_PARENTHESIS for_range_parameters KW_CLOSE_PARENTHESIS KW_OPEN_BRACKETS (for_block_statements)* KW_CLOSE_BRACKETS;
for_range_parameters: for_range_start_parameter for_range_end_parameter (for_range_step_parameter)?;
for_range_start_parameter: variable_integer_value;
for_range_end_parameter: variable_integer_value;
for_range_step_parameter: variable_integer_value;
for_block_statements: statement | break_statement;

dowhile_statement: KW_DO KW_OPEN_BRACKETS (dowhile_block_statements)* KW_CLOSE_BRACKETS KW_WHILE KW_OPEN_PARENTHESIS dowhile_condition KW_CLOSE_PARENTHESIS KW_SEMICOLON;
dowhile_condition: boolean_value;
dowhile_block_statements: statement | break_statement;

return_statement: return_statement_with_value | return_statement_without_value;
return_statement_with_value: KW_RETURN variable_value KW_SEMICOLON;
return_statement_without_value: KW_RETURN KW_SEMICOLON;

variable_integer_value: integer_value;

// Define boolean expressions
// Precedence rules:
// 1. Parenthesis
// 2. NOT
// 3. AND
// 4. OR
// 5. Relational operators (>, >=, <, <=, ==, !=)
boolean_value: boolean_expression;
boolean_expression:

// Define keywords
KW_DEF: 'def';
KW_MAIN: 'main';
KW_INT: 'int';
KW_FLOAT: 'real';
KW_STRING: 'string';
KW_BOOL: 'bool';
KW_VOID: 'void';
KW_OPEN_PARENTHESIS: '(';
KW_CLOSE_PARENTHESIS: ')';
KW_OPEN_BRACKETS: '{';
KW_CLOSE_BRACKETS: '}';
KW_COMMA: ',';
KW_SEMICOLON: ';';
KW_ASSIGN: '=';
KW_IF: 'if';
KW_ELSE: 'else';
KW_FOR: 'for';
KW_IN: 'in';
KW_RANGE: 'range';
KW_DO: 'do';
KW_WHILE: 'while';
KW_BREAK: 'break';
KW_RETURN: 'return';
KW_NOT: '!';
KW_AND: '&&';
KW_OR: '||';
KW_PLUS: '+';
KW_MINUS: '-';
KW_MULTIPLY: '*';
KW_DIVIDE: '/';
KW_TRUE: 'true';
KW_FALSE: 'false';

// Define values
INT_VALUE: DIGIT+;
FLOAT_VALUE: DIGIT+ '.' DIGIT+;
STRING_VALUE: '"' .*? '"';
BOOL_VALUE: KW_TRUE | KW_FALSE;
DIGIT: [0-9];
ID: [a-zA-Z][a-zA-Z0-9_]*;
WHITESPACE: [ \t\r\n]+ -> skip;