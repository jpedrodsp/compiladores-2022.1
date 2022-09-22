# Generated from /home/jpedro/Downloads/trabalhoFinalCompiladores/PythonS.g4 by ANTLR 4.10.1
from antlr4 import *
if __name__ is not None and "." in __name__:
    from .PythonSParser import PythonSParser
else:
    from PythonSParser import PythonSParser

# This class defines a complete listener for a parse tree produced by PythonSParser.
class PythonSListener(ParseTreeListener):

    # Enter a parse tree produced by PythonSParser#prog.
    def enterProg(self, ctx:PythonSParser.ProgContext):
        pass

    # Exit a parse tree produced by PythonSParser#prog.
    def exitProg(self, ctx:PythonSParser.ProgContext):
        pass


    # Enter a parse tree produced by PythonSParser#decVars.
    def enterDecVars(self, ctx:PythonSParser.DecVarsContext):
        pass

    # Exit a parse tree produced by PythonSParser#decVars.
    def exitDecVars(self, ctx:PythonSParser.DecVarsContext):
        pass


    # Enter a parse tree produced by PythonSParser#type.
    def enterType(self, ctx:PythonSParser.TypeContext):
        pass

    # Exit a parse tree produced by PythonSParser#type.
    def exitType(self, ctx:PythonSParser.TypeContext):
        pass


    # Enter a parse tree produced by PythonSParser#listaIds.
    def enterListaIds(self, ctx:PythonSParser.ListaIdsContext):
        pass

    # Exit a parse tree produced by PythonSParser#listaIds.
    def exitListaIds(self, ctx:PythonSParser.ListaIdsContext):
        pass


    # Enter a parse tree produced by PythonSParser#listaAtribs.
    def enterListaAtribs(self, ctx:PythonSParser.ListaAtribsContext):
        pass

    # Exit a parse tree produced by PythonSParser#listaAtribs.
    def exitListaAtribs(self, ctx:PythonSParser.ListaAtribsContext):
        pass


    # Enter a parse tree produced by PythonSParser#decFunc.
    def enterDecFunc(self, ctx:PythonSParser.DecFuncContext):
        pass

    # Exit a parse tree produced by PythonSParser#decFunc.
    def exitDecFunc(self, ctx:PythonSParser.DecFuncContext):
        pass


    # Enter a parse tree produced by PythonSParser#blocoMain.
    def enterBlocoMain(self, ctx:PythonSParser.BlocoMainContext):
        pass

    # Exit a parse tree produced by PythonSParser#blocoMain.
    def exitBlocoMain(self, ctx:PythonSParser.BlocoMainContext):
        pass


    # Enter a parse tree produced by PythonSParser#stmt.
    def enterStmt(self, ctx:PythonSParser.StmtContext):
        pass

    # Exit a parse tree produced by PythonSParser#stmt.
    def exitStmt(self, ctx:PythonSParser.StmtContext):
        pass


    # Enter a parse tree produced by PythonSParser#breakStmt.
    def enterBreakStmt(self, ctx:PythonSParser.BreakStmtContext):
        pass

    # Exit a parse tree produced by PythonSParser#breakStmt.
    def exitBreakStmt(self, ctx:PythonSParser.BreakStmtContext):
        pass


    # Enter a parse tree produced by PythonSParser#atrib.
    def enterAtrib(self, ctx:PythonSParser.AtribContext):
        pass

    # Exit a parse tree produced by PythonSParser#atrib.
    def exitAtrib(self, ctx:PythonSParser.AtribContext):
        pass


    # Enter a parse tree produced by PythonSParser#for.
    def enterFor(self, ctx:PythonSParser.ForContext):
        pass

    # Exit a parse tree produced by PythonSParser#for.
    def exitFor(self, ctx:PythonSParser.ForContext):
        pass


    # Enter a parse tree produced by PythonSParser#doWhile.
    def enterDoWhile(self, ctx:PythonSParser.DoWhileContext):
        pass

    # Exit a parse tree produced by PythonSParser#doWhile.
    def exitDoWhile(self, ctx:PythonSParser.DoWhileContext):
        pass


    # Enter a parse tree produced by PythonSParser#if.
    def enterIf(self, ctx:PythonSParser.IfContext):
        pass

    # Exit a parse tree produced by PythonSParser#if.
    def exitIf(self, ctx:PythonSParser.IfContext):
        pass


    # Enter a parse tree produced by PythonSParser#expr.
    def enterExpr(self, ctx:PythonSParser.ExprContext):
        pass

    # Exit a parse tree produced by PythonSParser#expr.
    def exitExpr(self, ctx:PythonSParser.ExprContext):
        pass


    # Enter a parse tree produced by PythonSParser#term.
    def enterTerm(self, ctx:PythonSParser.TermContext):
        pass

    # Exit a parse tree produced by PythonSParser#term.
    def exitTerm(self, ctx:PythonSParser.TermContext):
        pass


    # Enter a parse tree produced by PythonSParser#factor.
    def enterFactor(self, ctx:PythonSParser.FactorContext):
        pass

    # Exit a parse tree produced by PythonSParser#factor.
    def exitFactor(self, ctx:PythonSParser.FactorContext):
        pass


    # Enter a parse tree produced by PythonSParser#range.
    def enterRange(self, ctx:PythonSParser.RangeContext):
        pass

    # Exit a parse tree produced by PythonSParser#range.
    def exitRange(self, ctx:PythonSParser.RangeContext):
        pass


    # Enter a parse tree produced by PythonSParser#listaParams.
    def enterListaParams(self, ctx:PythonSParser.ListaParamsContext):
        pass

    # Exit a parse tree produced by PythonSParser#listaParams.
    def exitListaParams(self, ctx:PythonSParser.ListaParamsContext):
        pass


    # Enter a parse tree produced by PythonSParser#nativeFunc.
    def enterNativeFunc(self, ctx:PythonSParser.NativeFuncContext):
        pass

    # Exit a parse tree produced by PythonSParser#nativeFunc.
    def exitNativeFunc(self, ctx:PythonSParser.NativeFuncContext):
        pass


    # Enter a parse tree produced by PythonSParser#print.
    def enterPrint(self, ctx:PythonSParser.PrintContext):
        pass

    # Exit a parse tree produced by PythonSParser#print.
    def exitPrint(self, ctx:PythonSParser.PrintContext):
        pass


    # Enter a parse tree produced by PythonSParser#printable_expression.
    def enterPrintable_expression(self, ctx:PythonSParser.Printable_expressionContext):
        pass

    # Exit a parse tree produced by PythonSParser#printable_expression.
    def exitPrintable_expression(self, ctx:PythonSParser.Printable_expressionContext):
        pass


    # Enter a parse tree produced by PythonSParser#operacao.
    def enterOperacao(self, ctx:PythonSParser.OperacaoContext):
        pass

    # Exit a parse tree produced by PythonSParser#operacao.
    def exitOperacao(self, ctx:PythonSParser.OperacaoContext):
        pass



del PythonSParser