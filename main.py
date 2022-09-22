from antlr4 import *
#from antlr4.Token import CommonToken

from gen.PythonSLexer import PythonSLexer
from gen.PythonSParser import PythonSParser
from antlr4.error.Errors import ParseCancellationException
from antlr4.error.ErrorListener import ErrorListener

class bcolors:
    FAIL = '\033[91m' #RED

class ThrowingErrorListener(ErrorListener):
    def syntaxError(self, recognizer, offendingSymbol, line, column, msg, e):
        print("Deu erro no listener!")
        ex = ParseCancellationException(f'line {line}: {column} {msg}')
        ex.line = line
        ex.column = column
        ex.msg = msg
        print(f"{bcolors.FAIL} {ex}")
        exit(0)


if __name__ == '__main__':
    #print('ANTLR lexer e parser: ')
    print("Carregando arquivo...")
    fileEntrada = open("file.py", "r")
    data = fileEntrada.read()
    data = InputStream(data)
    print("Criando Lexer...")
    lexer = PythonSLexer(data)
    lexer.removeErrorListeners()
    lexer.addErrorListener(ThrowingErrorListener())

    # t = Token()
    # tokens = CommonTokenStream(lexer)
    # t = lexer.nextToken()
    #
    # while t.type != t.EOF:
    #     #print("<" + t.text + ", " + lexer.enterprog [t.type] + ">")
    #     t = lexer.nextToken()



    #Lexer
    print("Etapa 1: lexer")
    lexer = PythonSLexer(data)
    stream = CommonTokenStream(lexer)

    #Parser
    print("Etapa 2: parser")
    parser = PythonSParser(stream)
    tree = parser.prog()

    print("Etapa 3: tree")
    #print(tree)

    # Fazer análise semântica aqui
    ## Verificação de tipos


